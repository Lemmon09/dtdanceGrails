package publicSite

import grails.transaction.Transactional
import dtdance.Images
import dtdance.TextBlock

@Transactional
class UtilityService {

    def grailsApplication
    
    def gatherImageList(String imageFolder){
        def baseFolder = grailsApplication.parentContext.getResource("/").getFile().toString()
        def imagesFolder = baseFolder + "/images/" + imageFolder
        def imageList1 = new File(imagesFolder).list()
        def imageList = Arrays.asList(imageList1)       
        imageList
    }
    
    /** Inserts new entry to the indicated category to be displayed on the page. */
    def updateTextCategory(final String textCategory, final String bodyText){
        def textBlock = new TextBlock(textBlock: bodyText,
            category: textCategory
        )
        textBlock.save()
    }
    
    /** Finds the latest text entry from a certain category. */
    def selectLatestTextFromCategory(String textCategory){
        def news = TextBlock.where{
            category == textCategory && 
            dateCreated == max(dateCreated)
        }.list()
    }
}
