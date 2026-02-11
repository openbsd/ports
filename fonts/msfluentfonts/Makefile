COMMENT =	variant Microsoft fonts to help with visual crowding

MODFONT_FAMILY =	msfluentfonts

# HOMEPAGE lists version number
MODFONT_VERSION =	1.0

MODULES =	font

DISTNAME =	Microsoft%20Fluent%20Fonts%20for%20non-Windows%20OS
DIST_SUBDIR =	${MODFONT_FAMILY}-${MODFONT_VERSION}

HOMEPAGE =	https://www.microsoft.com/en-us/download/details.aspx?id=50721

SITES =		https://download.microsoft.com/download/1/6/9/1698b73e-f6c5-44ad-b2cf-88d21d610897/

# Installation and use permitted, redistribution prohibited (see EULA)
PERMIT_PACKAGE =	No redistribution
PERMIT_DISTFILES =	No redistribution

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}

post-extract:
	mv "${WRKSRC}/Microsoft Fluent Fonts EULA.rtf" \
		${WRKSRC}/Microsoft_Fluent_Fonts_EULA.rtf

MODFONT_DOCFILES =	*.rtf

.include <bsd.port.mk>
