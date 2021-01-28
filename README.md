# Common Commands
- rails server
- rails generate controller pages
- git config --list
- rails generate scaffold Article title:string description:text
- rails routes --expanded
- rails generate migration create_articles
- rails db:migrate
- rails db:rollback # 强烈不推荐


# Notes
-  每一个route 对应一个Controller下的一个action, 也就是一个method
   每个在route.ru中的 controller(比如pages) 对应到 controller文件夹 下的pages_controller
-  一个action可以去render一个页面, 也可以做其他事情, 如果要render一个页面的话, 页面名称就是
method_name.html.erb
-  rails 的模板语法中的'%>' 不可以分开写 它是区分空格的.

# 疑问
- rails generate controller pages具体做了什么
- 作业中提到的application server 和 web server的区别是什么
- 搞清楚不同的GET POST请求的route怎么写
- Ajax 和standard http的区别
- rails routes --expanded后每一个route的prefix是什么意思, 和 article_controller中的article_path有什么关系, 和show.html.erb中的url又有什么关系
- Article.new(params.require(:article).permit(:title, :description)) 什么意思
- flash是什么时候触发的?

