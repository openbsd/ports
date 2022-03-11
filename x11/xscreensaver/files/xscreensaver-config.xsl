<?xml version='1.0'?>
<!-- file originally from gnome-screensavers sources -->
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                version="1.0">
<xsl:output method="text" indent="no" />
<xsl:strip-space elements="*"/>

<xsl:template match="screensaver">
[Desktop Entry]
Encoding=UTF-8
Name=<xsl:value-of select="@_label" />
Comment=<xsl:value-of select="normalize-space(_description)" />
<xsl:if test="count(command/@name) != 0">
TryExec=<xsl:value-of select="normalize-space(command/@name)" />
Exec=<xsl:value-of select="normalize-space(command/@name)" /><xsl:text> </xsl:text><xsl:value-of select="normalize-space(command/@arg)" />
</xsl:if>
<xsl:if test="count(command/@name) = 0">
TryExec=<xsl:value-of select="normalize-space(@name)" />
Exec=<xsl:value-of select="normalize-space(@name)" /><xsl:text> </xsl:text><xsl:value-of select="normalize-space(command/@arg)" />
</xsl:if>
StartupNotify=false
Terminal=false
Type=Application
Categories=Screensaver;
OnlyShowIn=GNOME;
</xsl:template>

</xsl:stylesheet>
