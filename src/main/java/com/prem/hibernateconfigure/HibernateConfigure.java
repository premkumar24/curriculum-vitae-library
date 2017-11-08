package com.prem.hibernateconfigure;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.HibernateTransactionManager;
import org.springframework.orm.hibernate5.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

@Configuration
@ComponentScan(basePackages= {"com.prem.dto"})
@EnableTransactionManagement
public class HibernateConfigure {
	
	private String url ="jdbc:h2:tcp://localhost/~/prem";
	private String driver="org.h2.Driver";
	private String dialect="org.hibernate.dialect.H2Dialect";
	private String user="sa";
	private String password="";
	
	@Autowired
	@Bean("dataSource")
	public DataSource datasource() {
		
		BasicDataSource datasource=new BasicDataSource();
		
		datasource.setDriverClassName(driver);
		datasource.setUrl(url);
		datasource.setUsername(user);
		datasource.setPassword(password);
		return datasource;
	}
	
	@Autowired
	@Bean("SessionFactory")
	public SessionFactory getSessionFactory(DataSource datasource) {
		
		LocalSessionFactoryBuilder builder =new LocalSessionFactoryBuilder(datasource);
		
		builder.buildSessionFactory();
		
		builder.addProperties(getHibernateProperties());
		
		builder.scanPackages("com.prem");
		
		return builder.buildSessionFactory();

		
	}

	//returning all the Hibernate properties
	private Properties getHibernateProperties() {
		
		Properties p=new Properties();
		
		p.put("hibernate.dialect", dialect);
		p.put("hibernate.hbm2ddl.auto", "update");
		p.put("hibernate.show_sql", "true");
		p.put("hibernate.format_sql", "true");		
		
		return p;
	}
	
	//transaction manager
	@Bean("transactionManager")
	public HibernateTransactionManager getManager(SessionFactory sessionfactory)
	{
		HibernateTransactionManager h=new HibernateTransactionManager(sessionfactory);
		
		return h;
	}
}
