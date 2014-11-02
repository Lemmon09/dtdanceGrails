package dtdance

class TextBlock {

    String textBlock
    String category
    Date dateCreated
    Date lastUpdated
    
    static mapping = {
        textBlock type: 'text'
    }
    
}
