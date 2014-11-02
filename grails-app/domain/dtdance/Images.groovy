package dtdance

class Images {

    String filename
    String directory
    String category
    int width
    int height
    
    static constraints = {
        filename nullable: false
        directory nullable: false
        category nullable: false
    }
}
