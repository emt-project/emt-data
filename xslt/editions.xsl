<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:html="http://www.w3.org/1999/xhtml"
    version="2.0">
    <xsl:output exclude-result-prefixes="#all"/>
    <xsl:variable name="iiif_server" select="'https://iiif.acdh.oeaw.ac.at/kem/'"></xsl:variable>
    
    <xsl:import href="./partials/html_navbar.xsl"/>
    <xsl:import href="./partials/html_head.xsl"/>
    <xsl:import href="partials/html_footer.xsl"/>
    <xsl:template match="/">
        <xsl:variable name="doc_title">
            <xsl:value-of select=".//tei:title[@type='main'][1]/text()"/>
        </xsl:variable>
        <html xmlns="http://www.w3.org/1999/xhtml">
            <xsl:call-template name="html_head">
                <xsl:with-param name="html_title" select="$doc_title"></xsl:with-param>
            </xsl:call-template>
            
            <body class="page">
                <div class="hfeed site" id="page">
                    <xsl:call-template name="nav_bar"/>
                    
                    <div class="container">
                        <div class="card">
                            <div class="card card-header">
                                <h1><xsl:value-of select="$doc_title"/></h1>
                            </div>
                            <div class="card card-body">
                                <xsl:for-each select="//tei:text//tei:ab">
                                    <xsl:variable name="counter" select="concat('curNum__', position())"></xsl:variable>
                                    <xsl:variable name="facs_id" select="substring-after(data(./preceding::tei:pb[1]/@facs), '#')"/>
                                    <xsl:variable name="page_nr" select="data(./preceding::tei:pb[1]/@n)"/>
                                    <xsl:variable name="facs_el" select="id($facs_id)" as="node()"/>
                                    <xsl:variable name="img_id" select="substring-before(data($facs_el//@url), '.jpg')"/>
                                    <xsl:variable name="iiif_json" select="concat($iiif_server, $img_id, '/info.json')"/>
                                    <div class="card">
                                        <div class="card-header">
                                            <!--facs_id: <xsl:value-of select="$facs_id"/><br/>
                                img_id: <xsl:value-of select="$img_id"/><br/>
                                iiif_json: <xsl:value-of select="$iiif_json"/>-->
                                            
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <div class="card">
                                                        <div class="body">
                                                            <xsl:apply-templates/>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-6">
                                                    <div class="card">
                                                        <div class="body">
                                                            <div style="width:400px; height:600px">
                                                                <xsl:attribute name="id">
                                                                    <xsl:value-of select="concat('img', $counter)"/>
                                                                </xsl:attribute>
                                                            </div>
                                                            
                                                            <script type="text/javascript">
                                                                var source = "<xsl:value-of select="$iiif_json"/>";
                                                                OpenSeadragon({
                                                                id: "<xsl:value-of select="concat('img', $counter)"/>",
                                                                tileSources: [
                                                                source
                                                                ],
                                                                sequence: false,
                                                                prefixUrl:"https://cdnjs.cloudflare.com/ajax/libs/openseadragon/2.4.2/images/"
                                                                });
                                                            </script>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </xsl:for-each>
                            </div>
                        </div>
                    </div>

                    <xsl:call-template name="html_footer"/>
                </div>
            </body>
        </html>
    </xsl:template>
                    
    
    <xsl:template match="tei:lb">
        <xsl:apply-templates/><br/>
    </xsl:template>
    <xsl:template match="tei:unclear">
        <abbr title="unclear"><xsl:apply-templates/></abbr>
    </xsl:template>
    <xsl:template match="tei:del">
        <del><xsl:apply-templates/></del>
    </xsl:template>
    <xsl:template match="tei:pb">
        <hr />
    </xsl:template>
</xsl:stylesheet>