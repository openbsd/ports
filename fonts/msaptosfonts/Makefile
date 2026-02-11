COMMENT =	Microsoft Office 2023+ default font

MODFONT_FAMILY =	msaptosfonts

# HOMEPAGE lists version number
MODFONT_VERSION =	4.40

MODULES =	font

DISTNAME =	Microsoft%20Aptos%20Fonts
DIST_SUBDIR =	${MODFONT_FAMILY}-${MODFONT_VERSION}

HOMEPAGE =	https://www.microsoft.com/en-us/download/details.aspx?id=106087

SITES =		https://download.microsoft.com/download/8/6/0/860a94fa-7feb-44ef-ac79-c072d9113d69/

# Installation and use permitted, redistribution prohibited (see EULA)
PERMIT_PACKAGE =	No redistribution
PERMIT_DISTFILES =	No redistribution

NO_BUILD =	Yes
NO_TEST =	Yes

WRKDIST =	${WRKDIR}

post-extract:
	mv "${WRKSRC}/Microsoft Aptos Fonts EULA.rtf" \
		${WRKSRC}/Microsoft_Aptos_Fonts_EULA.rtf

MODFONT_DOCFILES =	*.rtf

.include <bsd.port.mk>
