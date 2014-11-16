package dtdance

import dtdance.Images
import publicSite.UtilityService

class PublicSiteController {

    UtilityService util
    
    /** The main app page, with all the links */
    def index() {
        def headerImages = util.gatherImageList('history')
        [pics: headerImages]  
    }

    /** Latest news and updates for all users in initally see */
    def revealContent(final String isEditing, final String bodyText, final String category) {
        println category
        def contentCategory = category?:'news'
        util.updateTextCategory(contentCategory, bodyText)
        
        def contentHTML = util.selectLatestTextFromCategory(contentCategory)
        def editPage = isEditing?:'false'
        
        [content: contentHTML, isEditing: editPage, category: contentCategory]
    }

    def revealGallery(final String category) {
        def folder = category?:'history'
        def imageNames = util.gatherImageList(folder)
        [category: folder, pics: imageNames]
    }
    
    

}