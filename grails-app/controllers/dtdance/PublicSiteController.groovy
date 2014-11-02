package dtdance

import dtdance.Images

class PublicSiteController {

    def index() {
        /*
        def pics = Images.where{
            category == "trips"
        }.list()
        [pics: pics]
        */
    }

    def news(final String isEditing, final String bodyText) { 
        
        
        def textBlock = new TextBlock(textBlock: bodyText,
            category:'news'
        )
        textBlock.save()
        
        
        
        def news = TextBlock.where{
            category == "news" && dateCreated == max(dateCreated)
        }.list()
        def editPage = isEditing?:'false'
        println isEditing
        println editPage
        
        [news: news, isEditing: editPage]
    }

    def about() {}

    def classes() {}

    def events() {}

    def studio() {}

    def gallery() {
        def pics = Images.where{
            category == "studio"
        }.list()
        [pics: pics]
    }

}