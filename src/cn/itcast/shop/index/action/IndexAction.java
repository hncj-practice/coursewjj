package cn.itcast.shop.index.action;

import java.util.List;

import cn.itcast.shop.category.service.CategoryService;
import cn.itcast.shop.category.vo.Category;
import cn.itcast.shop.product.service.ProductService;
import cn.itcast.shop.product.vo.Product;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

/**
 * 首页访问的Action
 */
public class IndexAction extends ActionSupport{
	// 注入分类1的Service:
	private CategoryService categoryService;
	// 注入商品的Service
	private ProductService productService;
	
	public void setCategoryService(CategoryService categoryService) {
		this.categoryService = categoryService;
	}

	public void setProductService(ProductService productService) {
		this.productService = productService;
	}

	/**
	 * 执行的访问首页的方法:
	 */
	public String execute(){
		// 查询所有分类1集合
		List<Category> cList = categoryService.findAll();
		// 将分类1存入到Session的范围:
		ActionContext.getContext().getSession().put("cList", cList);
		// 查询热门商品:
		List<Product> hList = productService.findHot();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("hList", hList);
		// 查询最新商品:
		List<Product> nList = productService.findNew();
		// 保存到值栈中:
	    ActionContext.getContext().getValueStack().set("nList", nList);
		// 查询猜你喜欢商品:
		List<Product> lList = productService.findLike();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("lList", lList);
		// 查询现实抢购商品:
	    List<Product> xsList = productService.findxs();
	    // 保存到值栈中:
		ActionContext.getContext().getValueStack().set("xsList", xsList);
		//排行
		List<Product> phList = productService.findph();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("phList", phList);
		//rq
		List<Product> rqList = productService.findrq();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("rqList", rqList);		
		
		List<Product> box1List = productService.findbox1();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("box1List", box1List);	
		
		List<Product> box2List = productService.findbox2();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("box2List", box2List);	
		
		List<Product> box3List = productService.findbox3();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("box3List", box3List);
		
		List<Product> box4List = productService.findbox4();
		// 保存到值栈中:
		ActionContext.getContext().getValueStack().set("box4List", box4List);			
		
		return "index";
	}
	
	
}
