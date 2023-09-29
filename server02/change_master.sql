-- a sdript to set master config on a slave mysql-server

CHANGE MASTER TO
	MASTER_HOST = '54.144.155.41',
	MASTER_USER = 'replica_user',
	MASTER_PASSWORD = 'PssWrd',
	MASTER_LOG_FILE = 'mysql_bin.000003',
	MASTER_LOG_POS = 154;
START SLAVE;
