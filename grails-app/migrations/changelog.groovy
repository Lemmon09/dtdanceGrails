databaseChangeLog = {

	changeSet(author: "grumpyskunk (generated)", id: "1414713454101-1") {
		createTable(tableName: "images") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "imagesPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "category", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "directory", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "filename", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "height", type: "integer") {
				constraints(nullable: "false")
			}

			column(name: "width", type: "integer") {
				constraints(nullable: "false")
			}
		}
	}

	changeSet(author: "grumpyskunk (generated)", id: "1414713454101-2") {
		createTable(tableName: "text_block") {
			column(autoIncrement: "true", name: "id", type: "bigint") {
				constraints(nullable: "false", primaryKey: "true", primaryKeyName: "text_blockPK")
			}

			column(name: "version", type: "bigint") {
				constraints(nullable: "false")
			}

			column(name: "category", type: "varchar(255)") {
				constraints(nullable: "false")
			}

			column(name: "entry_time", type: "timestamp") {
				constraints(nullable: "false")
			}

			column(name: "text_block", type: "varchar(255)") {
				constraints(nullable: "false")
			}
		}
	}

	include file: 'make-text-longer.groovy'

	include file: 'standard-date-columns.groovy'
	include file: 'date-defaults-and-not-null.groovy'
	include file: 'timestamps-not-null.groovy'

	include file: 'remove-extra-column.groovy'
}
