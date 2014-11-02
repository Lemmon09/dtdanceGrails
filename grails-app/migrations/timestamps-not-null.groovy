databaseChangeLog = {

    changeSet(author: "GrumpySkunk", id: "timestamps-not-null") {
        addNotNullConstraint(tableName: "TEXT_BLOCK", columnName: "date_created", columnDataType: "timestamp")
        addNotNullConstraint(tableName: "TEXT_BLOCK", columnName: "last_updated", columnDataType: "timestamp")
    }
}


       