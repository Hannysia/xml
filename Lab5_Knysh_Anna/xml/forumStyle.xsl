<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    </head>

    <body style="
        margin: 0;
        padding: 0;
	    background: #e0fdff;
        font-family: 'Franklin Gothic Medium';
	    color: white;">

        <div style="
            width: 100%; 
            margin: 0;">

            <h1 style="
                text-align: center;
                color: #d1a70d;
                top: 0;
                left: 0;
                height: 100px;
                background: #033a3d;
                margin-top: -0px; 
                line-height: 100px;
                ">
                <xsl:value-of select="forum/header" />
            </h1>

            <div style="
                    text-align: center;
                    color: #033a3d;
                    font-size: 250%;
                    padding: 3% 0%;">
                <span style="
                    text-align: center;
                    color: #033a3d;">
                    <xsl:value-of select="forum/header_subject" />
                </span>
            </div>

            <xsl:for-each select="forum/article">
                <xsl:variable name="authorName" select="meta_data/user_date/user_full_information/username"/>

                <div style="width: 80%;
                            margin: 0 auto;
                            margin-top: 110px;
                            padding-bottom: 20px
                            ">
                <hr style="color: #d1a70d"/>

                    <div>
                        <div style="text-align: left;">
                            <!-- //authors_image -->
                                


                            <!-- //user_data -->
                            <div style="
                                    background:	#2f797d;
                                    padding: 10px; 
                                    border-radius: 10px;
                                    margin: 20px;
                                    font-size: 21px;
                                    font-family: 'Arial';
                                    color: black;
                                    font-size: .75rem;
                                    display: inline-block;
                                    width: 95%;
                                    
                                    "
                                >
                                
                                
                                <div style="
                                        background:white;
                                        width:100%;
                                        padding: 1px;
                                        margin: auto;
                                        display: flex;"
                                    >
                                    <div style="width: 10%; height: auto; margin: 2%;"> 
                                        <img style="display: block;
                                            margin: auto;
                                            max-width: 70px;
                                            max-height: 70px;
                                            border-radius: 100px;" 
                                        src="{authors_image}" />
                                    </div>
                                    <div style="display: block; margin-top: 2%;">
                                        <div>
                                            <p style="font-weight: 600; font-size: .9rem; width: 100%; margin: 1%;">
                                                Стаття: <xsl:value-of select="meta_data/user_date/user_article/article_name" />
                                            </p>
                                        </div>

                                        <div style="width: 100%; display: flex; margin: 1%;">
                                            <p style="margin-right: 5px;">
                                                A: <xsl:value-of select="meta_data/user_date/user_full_information/username" />
                                            </p>
                                            <p style="margin-right: 5px;">
                                                <xsl:value-of select="meta_data/user_date/user_full_information/date" />
                                            </p>
                                            <p style="margin-right: 5px;">
                                                <xsl:value-of select="meta_data/user_date/user_full_information/time" />
                                            </p>
                                        </div>
                                    </div>
                                    
                                    
                                </div>
                            </div>
                        </div>

                        <div style="padding: 10px; 
                                    margin: 20px;
                                    border-radius: 15px; 
                                    background: white;
                                    border: 7px solid #48747c;
                                    color: #16393c;
                                    font-weight: 100;">
                            <h1 style="padding: 8px;
                                        margin: auto;
                                        text-align: center;
                                        color: #16393c;
                    
                                        ">
                                <xsl:value-of select="content/topic" />
                            </h1>
                            <p style="text-align: center; font-size:17px;">
                                <xsl:value-of select="content/article_body" />
                            </p>
                        </div>

                        <h2 style="
                            display:inline-block;
                            padding: 10px;
                            margin: 20px;
                            color: #16393c">
                            Коментарі:
                        </h2>

                        <xsl:for-each select="comments/comment">
                            <xsl:choose>
                                <xsl:when test="commentator_data/user_full_information/username = $authorName">
                                    <div style="padding: 10px; 
                                                background: white;  
                                                border-radius: 20px;
                                                margin-left: 50%;
                                                margin-bottom: 10px;
                                                margin-left: 300px;
                                                width: 70%;
                                                border: 7px solid #48747c;
                                                color: #203c3c;">

                                        <div style="
                                                display: flex;">

                                                <div style="width: 10%; height: auto; margin: 2%;"> 
                                                    <img style="display: block;
                                                        margin: auto;
                                                        max-width: 70px;
                                                        max-height: 70px;
                                                        border-radius: 100px;
                                                        border: 3px solid white;" 
                                                    src="{authors_image}" />
                                                </div>

                                                <div style="display: block; margin-top: 2%;">
                                                    <div>
                                                        <p style="font-weight: 600; font-size: .9rem; width: 100%; margin: 1%;">
                                                            Re: <xsl:value-of select="commentator_data/user_article/to_article" />
                                                        </p>
                                                    </div>

                                                    <div style="width: 100%; display: flex; margin: 1%;">
                                                        <p style="margin-right: 5px;">
                                                            <xsl:value-of select="commentator_data/user_full_information/username" />
                                                        </p>
                                                        <p style="margin-right: 5px;">
                                                            <xsl:value-of select="commentator_data/user_full_information/date" />
                                                        </p>
                                                        <p style="margin-right: 5px;">
                                                            <xsl:value-of select="commentator_data/user_full_information/time" />
                                                        </p>
                                                    </div>
                                                </div>
                                        </div>
                                        <p style="text-align: left; font-size:17px; padding: 0% 5%; 2% 5%">
                                                        <xsl:value-of select="commentator_data/user_full_information/response" />
                                                    </p>
                                    </div>
                                </xsl:when>
                                <xsl:otherwise>
                                    <div style="padding: 10px; 
                                                background:#16393c;
                                                border-radius: 20px; 
                                                margin-right: 20%; 
                                                margin-bottom: 20px;
                                                margin-left: 30px;
                                                width: 70%;

                                                ">
                                        <div style="
                                                display: flex;">

                                                <div style="width: 10%; height: auto; margin: 2%;"> 
                                                    <img style="display: block;
                                                        margin: auto;
                                                        max-width: 70px;
                                                        max-height: 70px;
                                                        border-radius: 100px;
                                                        border: 3px solid white;" 
                                                    src="{authors_image}" />
                                                </div>

                                                <div style="display: block; margin-top: 2%;">
                                                    <div>
                                                        <p style="font-weight: 600; font-size: .9rem; width: 100%; margin: 1%;">
                                                            Re: <xsl:value-of select="commentator_data/user_article/to_article" />
                                                        </p>
                                                    </div>

                                                    <div style="width: 100%; display: flex; margin: 1%;">
                                                        <p style="margin-right: 5px;">
                                                            <xsl:value-of select="commentator_data/user_full_information/username" />
                                                        </p>
                                                        <p style="margin-right: 5px;">
                                                            <xsl:value-of select="commentator_data/user_full_information/date" />
                                                        </p>
                                                        <p style="margin-right: 5px;">
                                                            <xsl:value-of select="commentator_data/user_full_information/time" />
                                                        </p>
                                                    </div>
                                                </div>
                                        </div>
                                        <p style="text-align: left; font-size:17px; padding: 0% 5%; 2% 5%">
                                                        <xsl:value-of select="commentator_data/user_full_information/response" />
                                                    </p>
                                    </div>
                                </xsl:otherwise>
                            </xsl:choose>
                        </xsl:for-each>
                    </div>
                </div>
            </xsl:for-each>
        </div>
    </body>
</html>