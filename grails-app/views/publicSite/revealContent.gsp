<!DOCTYPE HTML>
<html>
<head>
    <title>Untitled Document</title>
    <meta content="text/html; charset=UTF-8" http-equiv="Content-Type" />
    <link type="text/css" rel="stylesheet" href="${resource(dir: 'css', file: 'dtdance.css')}" />
    <link type="text/css" rel="stylesheet" href="${resource(dir: 'cleditor', file: 'jquery.cleditor.css')}" />
    <script src="${resource(dir: 'js', file: 'jquery-1.11.1.min.js')}"></script>
    <script src="${resource(dir: 'cleditor', file: 'jquery.cleditor.min.js')}"> </script>
    <g:if test="${isEditing=='true'}"> 
        <script>
            $(document).ready(function(){
                $("#contentBlock textarea").cleditor();
            });
        </script>
    </g:if>
</head>

<body>
    <main id="contentBlock" name="newsBlock">
        <g:form name="contentForm" url="[action:'revealContent', controller:'PublicSite']">
            <g:if test="${isEditing=='true'}"> 
                <textarea id="bodyText" name="bodyText">
            </g:if>
                <g:each status="i" in="${content}" var="it">
                    ${raw(it.textBlock)}
                </g:each>
            <g:if test="${isEditing=='true'}"> 
                </textarea>
            </g:if>
            <g:hiddenField name="isEditing" value="true"/>
            <g:hiddenField name="category" value ="${category}"/>
            <g:submitButton name="completeEdit" value="Update"/>
        </g:form> 
    </main>
    
    <p>
        Check out our
        <strong><a href="dtsodbrochure.pdf" target="_blank">Brochure</a></strong>
        for more information. Summer camps and classes are enrolling now!
    </p>

</body>
</html>