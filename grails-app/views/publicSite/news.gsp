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
                $("#newsBlock textarea").cleditor();
            });
        </script>
    </g:if>
</head>

<body>
    <h1>
        Welcome to <strong>DTDanceArts.com</strong>, 
        the source for class and school information for Dorothy Thomas School of Dance and Theatre Arts.
    </h1>

    <main id="newsBlock" name="newsBlock">
        <g:form name="newsForm" url="[action:'news', controller:'PublicSite']">
            <g:if test="${isEditing=='true'}"> 
                <textarea id="bodyText" name="bodyText">
            </g:if>
                <g:each status="i" in="${news}" var="it">
                    ${raw(it.textBlock)}
                </g:each>
            <g:if test="${isEditing=='true'}"> 
                </textarea>
                
            </g:if>
            <g:hiddenField name="isEditing" value="true"/>
            <g:submitButton name="completeEdit" value="Update"/>
        </g:form> 
    </main>
    
    <p>
        Check out our
        <strong><a href="dtsodbrochure.pdf" target="_blank">
            Brochure
        </a></strong>
        for more information. Summer camps and classes are enrolling now!
    </p>

</body>
</html>