function onUpdateDatabase()
	logger.info("Updating accounts table to add last_valid_otp -> Database Version 53")
	db.query([[
		ALTER TABLE accounts
		ADD COLUMN last_valid_otp INT(6) DEFAULT NULL;
	]])
end
