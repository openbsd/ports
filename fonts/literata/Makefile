COMMENT =	contemporary serif typeface for long-form reading

MODFONT_FAMILY =	literata
MODFONT_VERSION =	3.103

DISTNAME =		${MODFONT_VERSION}

HOMEPAGE =	https://fonts.google.com/specimen/Literata

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/googlefonts/literata/releases/download/${MODFONT_VERSION}/
SITES.doc =	https://raw.githubusercontent.com/googlefonts/literata/${MODFONT_VERSION}/

DISTFILES.doc = OFL.txt
EXTRACT_ONLY =	${DISTNAME}${EXTRACT_SUFX}

DIST_SUBDIR =	literata-${MODFONT_VERSION}

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}/fonts/ttf

MODFONT_DOCFILES =	../../OFL.txt

.include <bsd.port.mk>
