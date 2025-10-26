CREATE DATABASE organic_farming_db;
USE organic_farming_db;

DROP TABLE  funding_data;
DROP TABLE carbon_monitoring;
DROP TABLE agriculture_projects;


CREATE TABLE agriculture_projects (
	project_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	region VARCHAR(50),
	crop_type VARCHAR(50),
	area_ha INT,
	soil_carbon_baseline FLOAT,
	soil_carbon_current FLOAT,
	carbon_gain_tCO2e FLOAT,
	farmers INT,
	start_year INT
);


CREATE TABLE carbon_monitoring (
	carbon_monitoring_id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
	project_id INT UNSIGNED,
	mrv_status VARCHAR(30),
	verification_date DATE,
	credits_verified INT,
	verifier VARCHAR(50),
	remarks VARCHAR(100),
	last_update DATE,
	monitoring_round INT,
	FOREIGN KEY (project_id) REFERENCES agriculture_projects(project_id)
);

CREATE TABLE funding_data (
	funding_data_id INT AUTO_INCREMENT PRIMARY KEY,
	project_id INT UNSIGNED,
	funding_source VARCHAR(100),
	amount_usd DECIMAL(12,2),
	disbursed_date DATE,
	purpose VARCHAR(100),
	contract_id VARCHAR(20),
	disbursed_by VARCHAR(50),
	currency VARCHAR(10),
	FOREIGN KEY (project_id) REFERENCES agriculture_projects(project_id)
);
