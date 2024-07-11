COMMENT =		IBM's corporate type family

MODFONT_FAMILY =	ibm-plex

CATEGORIES =		fonts
V =			6.4.0
PKGNAME =		ibm-plex-$V

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =			https://github.com/IBM/plex/releases/download/v$V/

DISTFILES =		OpenType.zip \
			TrueType.zip

DIST_SUBDIR =		ibm-plex-$V

HOMEPAGE =		https://www.ibm.com/plex/

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

# currently JP fonts only have hinted/unhinted directory,
# this package use hinted font following Noto fonts.
MODFONT_FONTFILES =	OpenType/*/*.otf \
			TrueType/*/*.ttf \
			OpenType/IBM-Plex-Sans-JP/hinted/*.otf \
			TrueType/IBM-Plex-Sans-JP/hinted/*.ttf
MODFONT_DOCFILES =	OpenType/IBM-Plex-Sans/license.txt
FONTDIR =		${PREFIX}/share/fonts/ibm-plex

.include <bsd.port.mk>
