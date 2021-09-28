<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0" xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:html="http://www.w3.org/1999/xhtml" exclude-result-prefixes="#all" version="2.0">
    <xsl:template match="/" name="nav_bar">
        <xsl:param name="site_title">
            Familiensache. Dynastische Handlungsspielräume von Frauen
        </xsl:param>
        <div class="wrapper-fluid wrapper-navbar sticky-navbar" id="wrapper-navbar" >
            <a class="skip-link screen-reader-text sr-only" href="#content">Skip to content</a>
            <nav class="navbar navbar-expand-lg navbar-light">
                <div class="container" >
                    <!-- Your site title as branding in the menu -->
                    <a href="index.html" class="navbar-brand custom-logo-link" rel="home" itemprop="url"><img src="dist/fundament/images/fundament_logo.svg" class="img-fluid" alt="Fundament Logo" itemprop="logo" /></a><!-- end custom logo -->
                    <a class="navbar-brand site-title-with-logo" rel="home" href="index.html" title="{$site_title}" itemprop="url"><xsl:value-of select="$site_title"/></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                        <!-- Your menu goes here -->
                        <ul id="main-menu" class="navbar-nav">
                            <li class="nav-item active"><a title="Table of Contents" href="toc.html" class="nav-link">Table of Contents</a></li>
                            <!--<li class="nav-item dropdown">
                                <a title="Dropdown" href="#" data-toggle="dropdown" class="nav-link dropdown-toggle">Dropdown <span class="caret"></span></a>
                                <ul class=" dropdown-menu" role="menu">
                                    <li class="nav-item dropdown-submenu">
                                        <a title="Level 1" href="#" class="nav-link">Level 1</a>
                                    </li>
                                </ul>
                            </li>-->
                            <li class="nav-item"><a title="GitHub" href="https://github.com/Auden-Musulin-Papers/amp-data" class="nav-link">GitHub</a></li>
                        </ul>
                        <!--<form class="form-inline my-2 my-lg-0 navbar-search-form" method="get" action="/" role="search">
                            <input class="form-control navbar-search" id="s" name="s" type="text" placeholder="Search" value="" autocomplete="off" />
                                <button type="submit" class="navbar-search-icon">
                                    <i data-feather="search"></i>
                                </button>
                        </form>-->
                    </div>
                    <!-- .collapse navbar-collapse -->
                </div>
                <!-- .container -->
            </nav>
            <!-- .site-navigation -->
        </div>
    </xsl:template>
</xsl:stylesheet>