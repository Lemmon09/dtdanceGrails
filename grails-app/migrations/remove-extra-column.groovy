databaseChangeLog = {

	changeSet(author: "grumpyskunk (generated)", id: "1414954061085-1") {
		modifyDataType(columnName: "TEXT_BLOCK", newDataType: "longvarchar", tableName: "TEXT_BLOCK")
	}

	changeSet(author: "grumpyskunk (generated)", id: "1414954061085-2") {
		dropColumn(columnName: "ENTRY_TIME", tableName: "TEXT_BLOCK")
	}
}
