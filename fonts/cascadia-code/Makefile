V =		2111.01
COMMENT =	Microsoft programming/terminal font
DISTNAME =	CascadiaCode-${V}
PKGNAME =	cascadia-code-${V}
EXTRACT_SUFX =	.zip
CATEGORIES =	fonts x11

MODFONT_FAMILY =	cascadia-code

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =	https://github.com/microsoft/cascadia-code/releases/download/v${V}/
WRKDIST =	${WRKDIR}

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

MODFONT_FONTDIR =	${PREFIX}/share/fonts/cascadia
MODFONT_FONTFILES =	ttf/*.ttf otf/static/*.otf

.include <bsd.port.mk>
