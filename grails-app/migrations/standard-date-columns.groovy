databaseChangeLog = {

    changeSet(author: "GrumpySkunk", id: "standard-date-columns") {
        addColumn(tableName: "TEXT_BLOCK") {
            column(name: "date_created", type: "timestamp")
            column(name: "last_updated", type: "timestamp")
        }
    }
}