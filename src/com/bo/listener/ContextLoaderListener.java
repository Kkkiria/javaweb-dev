package com.bo.listener;

import com.bo.entity.Book;
import com.bo.entity.User;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/**
 * @author dqy
 * @ClassName ContextLoaderListener
 * @Description 上下文加载监听，在服务器启动的时候即刻生效，用来生成用户数据和图书数据
 * @Date 2019/10/3
 * @Version 1.0
 **/

@WebListener
public class ContextLoaderListener implements ServletContextListener {

    /**
     * @Description 容器初始化方法
     * @param sce
     */
    @Override
    public void contextInitialized(ServletContextEvent sce) {
        System.out.println("容器启动");
        //创建并生成用户数据列表
        List<User> userList = new ArrayList<>(3);
        User[] users = {
                new User(1, "aaa@qq.com", "698d51a19d8a121ce581499d7b701668", "十亿少男的梦", "user1.jpg", "江苏常州", LocalDate.of(2016, 3, 8)),
                new User(2, "bbb@qq.com", "698d51a19d8a121ce581499d7b701668", "Kiria", "user2.jpg", "浙江温州", LocalDate.of(2018, 10, 29)),
                new User(3, "ccc@qq.com", "698d51a19d8a121ce581499d7b701668", "小宝贝", "user3.jpg", "湖南长沙", LocalDate.of(2019, 11, 11))
        };
        userList = Arrays.asList(users);

        //创建并生成图书数据列表
        List<Book> bookList = new ArrayList<>(10);
        Book[] books = {
                new Book(1,"神洲异事录","5.jpg","若风95"),
                new Book(2,"迷失蔚蓝","4.jpg","茶叔"),
                new Book(3,"我能复制万族天赋","1.jpg","淡味冰激凌"),
                new Book(4,"放开那个女巫","2.jpg","二目"),
                new Book(5,"间客", "3.jpg", "猫腻"),
                new Book(6,"神洲异事录","5.jpg","若风95"),
                new Book(7,"迷失蔚蓝","4.jpg","茶叔"),
                new Book(8,"我能复制万族天赋","1.jpg","淡味冰激凌"),
                new Book(9,"放开那个女巫","2.jpg","二目"),
                new Book(10,"间客", "3.jpg", "猫腻")

        };
        bookList = Arrays.asList(books);

        //获得全局变量
        ServletContext servletContext = sce.getServletContext();
        //设置全局变量属性，将用户和图书列表数据记入，整个应用可以共享
        servletContext.setAttribute("userList", userList);
        servletContext.setAttribute("bookList", bookList);
    }

    /**
     * 销毁方法
     *
     * @param sce
     */
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        System.out.println("容器销毁");
    }
}
