package com.fit.phonebook.config;

import java.util.Arrays;

import javax.persistence.EntityManagerFactory;
import org.springframework.jdbc.datasource.DriverManagerDataSource;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.boot.autoconfigure.jdbc.DataSourceProperties;
import org.springframework.boot.context.properties.ConfigurationProperties;
import org.springframework.boot.orm.jpa.EntityManagerFactoryBuilder;
import org.springframework.context.ApplicationContextException;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Primary;
import org.springframework.core.env.Environment;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;
import org.springframework.orm.jpa.JpaTransactionManager;
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean;
import org.springframework.transaction.PlatformTransactionManager;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.zaxxer.hikari.HikariConfig;
import com.zaxxer.hikari.HikariDataSource;

@Configuration
@EnableTransactionManagement
@EnableJpaRepositories(entityManagerFactoryRef = "contactEntityManagerFactory",
transactionManagerRef = "contactTransactionManager",
basePackages = { "com.fit.phonebook.repository" })
public class DatabaseConfiguration {

	private final Logger log = LoggerFactory.getLogger(DatabaseConfiguration.class);

	@Autowired
	private Environment env;

	@Bean(destroyMethod = "close", name = "contactDataSource")
	@ConfigurationProperties(prefix = "spring.datasource")
	public HikariDataSource dataSource(DataSourceProperties dataSourceProperties) {
		log.info("Configuring Datasource");
		if (dataSourceProperties.getUrl() == null) {
			log.error(
					"Your database connection pool configuration is incorrect! The application"
							+ " cannot start. Please check your Spring profile, current profiles are: {}",
					Arrays.toString(env.getActiveProfiles()));

			throw new ApplicationContextException("Database connection pool is not configured correctly");
		}

		//log.info(env.getActiveProfiles()[0]);
		HikariConfig config = new HikariConfig();
		config.setDataSourceClassName(env.getRequiredProperty("spring.datasource.driverClassName", String.class));
		config.addDataSourceProperty("url", env.getRequiredProperty("spring.datasource.url", String.class));
		if (dataSourceProperties.getUsername() != null) {
			config.addDataSourceProperty("user", env.getRequiredProperty("spring.datasource.username", String.class));
		} else {
			config.addDataSourceProperty("user", "");
		}
		if (dataSourceProperties.getPassword() != null) {
			config.addDataSourceProperty("password", env.getRequiredProperty("spring.datasource.password", String.class));
		} else {
			config.addDataSourceProperty("password", "");
		}

		config.setMaximumPoolSize(20);
		config.setMaxLifetime(2000000);
		config.setConnectionTimeout(300000);
		config.setIdleTimeout(30000);

		return new HikariDataSource(config);
	}

	@Bean(name = "contactEntityManagerFactory")
	public LocalContainerEntityManagerFactoryBean entityManagerFactory(EntityManagerFactoryBuilder builder,
			@Qualifier("contactDataSource") HikariDataSource dataSource) {
		return builder.dataSource(dataSource).packages("com.fit.phonebook.model")
				.build();
	}
	@Bean(name = "contactTransactionManager")
	public PlatformTransactionManager transactionManager(
			@Qualifier("contactEntityManagerFactory") EntityManagerFactory entityManagerFactory) {
		return new JpaTransactionManager(entityManagerFactory);
	}

}
