<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    exclude-result-prefixes="xs"
    version="2.0">
    <xsl:template match="/" name="html_head">
        <xsl:param name="html_title">Familiensache. Dynastische Handlungsspielräume von Frauen</xsl:param>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-capable" content="yes" />
        <meta name="apple-mobile-web-app-title" content="{$html_title}" />
        <link rel="profile" href="http://gmpg.org/xfn/11" />
        <title><xsl:value-of select="$html_title"/></title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" integrity="sha512-1ycn6IcaQQ40/MKBW2W4Rhis/DbILU74C1vSrLJxCq57o941Ym01SwNsOMqvEBFlcgUa6xLiPY/NS5R+E6ztJQ==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <link rel="stylesheet" id="fundament-styles"  href="dist/fundament/css/fundament.min.css" type="text/css"/>
        <link rel="stylesheet" href="css/style.css" type="text/css"/>
        <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/v/bs4/jq-3.3.1/jszip-2.5.0/dt-1.11.0/b-2.0.0/b-html5-2.0.0/cr-1.5.4/r-2.2.9/sp-1.4.0/datatables.min.css" />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/openseadragon/2.4.2/openseadragon.min.js" integrity="sha512-qvQYH6mPuE46uFcWLI8BdGaJpB5taX4lltbSIw5GF4iODh2xIgyz5ii1WpuzPFUknHCps0mi4mFGR44bjdZlZg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
        <script src="js/dt.js"></script>
    </head>
    </xsl:template>
</xsl:stylesheet>