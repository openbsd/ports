COMMENT=		monospace font designed for coders

MODFONT_FAMILY =	inconsolata-new
MODFONT_VERSION =	3.000

HOMEPAGE =		https://www.levien.com/type/myfonts/inconsolata.html

DIST_SUBDIR =		inconsolata-${MODFONT_VERSION}
SITES =	https://github.com/googlefonts/Inconsolata/releases/download/v${MODFONT_VERSION}/
DISTFILES =		fonts_ttf.zip \
			fonts_otf.zip

# SIL OFL 1.1
PERMIT_PACKAGE=	Yes

MODULES =		font

NO_BUILD=		Yes
NO_TEST=		Yes

WRKDIST =		${WRKDIR}/fonts

MODFONT_FONTDIR =	${PREFIX}/share/fonts/inconsolata
MODFONT_FONTFILES =	ttf/*.ttf otf/*.otf

.include <bsd.port.mk>
