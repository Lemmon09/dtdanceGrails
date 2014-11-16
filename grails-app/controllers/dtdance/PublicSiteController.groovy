package dtdance

import dtdance.Images
import publicSite.UtilityService

class PublicSiteController {

    def utilityService
    
    /** The main app page, with all the links */
    def index() {
        def headerImages = utilityService.gatherImageList('history')
        [pics: headerImages]  
    }

    /** Latest news and updates for all users in initally see */
    def revealContent(final String isEditing, final String bodyText, final String category) {
        def contentCategory = category?:'news'
        utilityService.updateTextCategory(contentCategory, bodyText)
        
        def contentHTML = utilityService.selectLatestTextFromCategory(contentCategory)
        def editPage = isEditing?:'false'
        
        [content: contentHTML, isEditing: editPage, category: contentCategory]
    }

    def revealGallery(final String category) {
        def folder = category?:'history'
        def imageNames = utilityService.gatherImageList(folder)
        [category: folder, pics: imageNames]
    }
    
    def revealContentProtected(final String isEditing, final String bodyText, final String category) {
        def contentCategory = category?:'news'
        utilityService.updateTextCategory(contentCategory, bodyText)
        
        def contentHTML = utilityService.selectLatestTextFromCategory(contentCategory)
        def editPage = isEditing?:'false'
        
        render(view: 'revealContent', params: [content: contentHTML, isEditing: editPage, category: contentCategory])
        
    }  
    

}