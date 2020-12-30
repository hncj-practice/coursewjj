package cn.itcast.shop.product.dao;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Order;
import org.hibernate.criterion.Restrictions;
import org.springframework.orm.hibernate3.HibernateCallback;
import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import cn.itcast.shop.product.vo.Product;
import cn.itcast.shop.utils.PageHibernateCallback;

/**
 * 商品持久层的代码
 */
public class ProductDao extends HibernateDaoSupport {

	// 首页上热门商品查询
	public List<Product> findHot() {
		// 使用离线条件查询.
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 查询热门的商品,条件就是is_host = 1
		criteria.add(Restrictions.eq("is_hot", 1));
		// 倒序排序输出:
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询:
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, 0, 18);
		return list;
	}

	// 首页上最新商品的查询
	public List<Product> findNew() {
		// 使用离线条件查询:
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 按日期进行倒序排序:
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询:
		List<Product> list = this.getHibernateTemplate().findByCriteria(criteria, 0, 18);
		return list;
	}
	
	// 首页上猜你喜欢商品查询
	public List<Product> findLike() {
		// 使用离线条件查询.
		DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
		// 查询热门的商品,条件就是is_host = 1
		criteria.add(Restrictions.eq("is_like", 1));
		// 倒序排序输出:
		criteria.addOrder(Order.desc("pdate"));
		// 执行查询:
		List<Product> list = this.getHibernateTemplate().findByCriteria(
				criteria, 0, 15);
		return list;
	}
	
	
	// 首页上现实抢购商品查询
		public List<Product> findxs() {
			// 使用离线条件查询.
			DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
			// 查询热门的商品,条件就是is_host = 1
			criteria.add(Restrictions.eq("is_like", 2));
			// 倒序排序输出:
			criteria.addOrder(Order.desc("pdate"));
			// 执行查询:
			List<Product> list = this.getHibernateTemplate().findByCriteria(
					criteria, 0, 4);
			return list;
		}
		
		// 首页上排行商品查询
				public List<Product> findph() {
					// 使用离线条件查询.
					DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
					// 查询热门的商品,条件就是is_host = 1
					criteria.add(Restrictions.eq("is_like", 3));
					// 倒序排序输出:
					criteria.addOrder(Order.desc("pdate"));
					// 执行查询:
					List<Product> list = this.getHibernateTemplate().findByCriteria(
							criteria, 0, 3);
					return list;
				}
				
				public List<Product> findrq() {
					// 使用离线条件查询.
					DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
					// 查询热门的商品,条件就是is_host = 1
					criteria.add(Restrictions.eq("is_like", 4));
					// 倒序排序输出:
					criteria.addOrder(Order.desc("pdate"));
					// 执行查询:
					List<Product> list = this.getHibernateTemplate().findByCriteria(
							criteria, 0, 8);
					return list;
				}
				
				public List<Product> findbox1() {
					// 使用离线条件查询.
					DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
					// 查询热门的商品,条件就是is_host = 1
					criteria.add(Restrictions.eq("is_like", 5));
					// 倒序排序输出:
					criteria.addOrder(Order.desc("pdate"));
					// 执行查询:
					List<Product> list = this.getHibernateTemplate().findByCriteria(
							criteria, 0, 4);
					return list;
				}
				public List<Product> findbox2() {
					// 使用离线条件查询.
					DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
					// 查询热门的商品,条件就是is_host = 1
					criteria.add(Restrictions.eq("is_like", 6));
					// 倒序排序输出:
					criteria.addOrder(Order.desc("pdate"));
					// 执行查询:
					List<Product> list = this.getHibernateTemplate().findByCriteria(
							criteria, 0, 4);
					return list;
				}
				public List<Product> findbox3() {
					// 使用离线条件查询.
					DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
					// 查询热门的商品,条件就是is_host = 1
					criteria.add(Restrictions.eq("is_like", 7));
					// 倒序排序输出:
					criteria.addOrder(Order.desc("pdate"));
					// 执行查询:
					List<Product> list = this.getHibernateTemplate().findByCriteria(
							criteria, 0, 4);
					return list;
				}
				public List<Product> findbox4() {
					// 使用离线条件查询.
					DetachedCriteria criteria = DetachedCriteria.forClass(Product.class);
					// 查询热门的商品,条件就是is_host = 1
					criteria.add(Restrictions.eq("is_like", 8));
					// 倒序排序输出:
					criteria.addOrder(Order.desc("pdate"));
					// 执行查询:
					List<Product> list = this.getHibernateTemplate().findByCriteria(
							criteria, 0, 4);
					return list;
				}
	
	// 根据商品ID查询商品
	public Product findByPid(Integer pid) {
		return this.getHibernateTemplate().get(Product.class, pid);
	}

	// 根据分类id查询商品的个数
	public int findCountCid(Integer cid) {
		String hql = "select count(*) from Product p where p.categorySecond.category.cid = ?";
		List<Long> list = this.getHibernateTemplate().find(hql,cid);
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据分类id查询商品的集合
	public List<Product> findByPageCid(Integer cid, int begin, int limit) {
		// select p.* from category c,categorysecond cs,product p where c.cid = cs.cid and cs.csid = p.csid and c.cid = 2
		// select p from Category c,CategorySecond cs,Product p where c.cid = cs.category.cid and cs.csid = p.categorySecond.csid and c.cid = ?
		String hql = "select p from Product p join p.categorySecond cs join cs.category c where c.cid = ?";
		// 分页另一种写法:
		List<Product> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, new Object[]{cid}, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
		
	}

	// 根据二级分类查询商品个数
	public int findCountCsid(Integer csid) {
		String hql = "select count(*) from Product p where p.categorySecond.csid = ?";
		List<Long> list = this.getHibernateTemplate().find(hql, csid);
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	// 根据二级分类查询商品信息
	public List<Product> findByPageCsid(Integer csid, int begin, int limit) {
		String hql = "select p from Product p join p.categorySecond cs where cs.csid = ?";
		List<Product> list = this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, new Object[]{csid}, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
	}

	// 后台统计商品个数的方法
	public int findCount() {
		String hql = "select count(*) from Product";
		List<Long> list = this.getHibernateTemplate().find(hql);
		if(list != null && list.size() > 0){
			return list.get(0).intValue();
		}
		return 0;
	}

	// 后台查询所有商品的方法
	public List<Product> findByPage(int begin, int limit) {
		String hql = "from Product order by pdate desc";
		List<Product> list =  this.getHibernateTemplate().execute(new PageHibernateCallback<Product>(hql, null, begin, limit));
		if(list != null && list.size() > 0){
			return list;
		}
		return null;
	}

	// DAO中的保存商品的方法
	public void save(Product product) {
		this.getHibernateTemplate().save(product);
	}

	// DAO中的删除商品的方法
	public void delete(Product product) {
		this.getHibernateTemplate().delete(product);
	}

	public void update(Product product) {
		this.getHibernateTemplate().update(product);
	}

}
