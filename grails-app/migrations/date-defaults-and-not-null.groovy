databaseChangeLog = {

    changeSet(author: "GrumpySkunk", id: "date-defaults-and-not-null") {
       grailsChange {
            change {
                sql.execute("UPDATE TEXT_BLOCK SET date_created = CURRENT_TIMESTAMP")
                sql.execute("UPDATE TEXT_BLOCK SET last_updated = CURRENT_TIMESTAMP")
            }
            rollback {
            }
        }
    }
}

