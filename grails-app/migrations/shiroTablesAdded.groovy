databaseChangeLog = {

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-1") {
		createTable(tableName: "shiro_role") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "shiro_rolePK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "name", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-2") {
		createTable(tableName: "shiro_role_permissions") {
			column(name: "shiro_role_id", type: "bigint")

			column(name: "permissions_string", type: "varchar(255)")
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-3") {
		createTable(tableName: "shiro_user") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "shiro_userPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "password_hash", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "username", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-4") {
		createTable(tableName: "shiro_user_permissions") {
			column(name: "shiro_user_id", type: "bigint")

			column(name: "permissions_string", type: "varchar(255)")
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-5") {
		createTable(tableName: "shiro_user_roles") {
			column(name: "shiro_role_id", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "shiro_user_id", type: "bigint") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-6") {
		modifyDataType(columnName: "TEXT_BLOCK", newDataType: "longvarchar", tableName: "TEXT_BLOCK")
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-7") {
		addPrimaryKey(columnNames: "shiro_user_id, shiro_role_id", tableName: "shiro_user_roles")
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-12") {
		createIndex(indexName: "name_uniq_1416155487010", tableName: "shiro_role", unique: "true") {
			column(name: "name")
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-13") {
		createIndex(indexName: "username_uniq_1416155487447", tableName: "shiro_user", unique: "true") {
			column(name: "username")
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-8") {
		addForeignKeyConstraint(baseColumnNames: "shiro_role_id", baseTableName: "shiro_role_permissions", constraintName: "FK_e59mk07m63mbbdcj23gu50ncq", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "shiro_role", referencesUniqueColumn: "false")
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-9") {
		addForeignKeyConstraint(baseColumnNames: "shiro_user_id", baseTableName: "shiro_user_permissions", constraintName: "FK_5rrok5vgsofo9fst3l53tkx8m", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "shiro_user", referencesUniqueColumn: "false")
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-10") {
		addForeignKeyConstraint(baseColumnNames: "shiro_role_id", baseTableName: "shiro_user_roles", constraintName: "FK_gcsy8p8yioss6r3hr8ba2ggtn", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "shiro_role", referencesUniqueColumn: "false")
	}

	changeSet(author: "grumpyskunk (generated)", id: "1416155487613-11") {
		addForeignKeyConstraint(baseColumnNames: "shiro_user_id", baseTableName: "shiro_user_roles", constraintName: "FK_c16m7rr368sdh1l6xkb2001y5", deferrable: "false", initiallyDeferred: "false", referencedColumnNames: "id", referencedTableName: "shiro_user", referencesUniqueColumn: "false")
	}
}
