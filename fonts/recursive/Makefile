COMMENT =	variable type family built for better code and UI

MODFONT_FAMILY =	recursive
MODFONT_VERSION =	1.085
DISTNAME =	ArrowType-Recursive-${MODFONT_VERSION}

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/arrowtype/recursive

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/arrowtype/recursive/releases/download/v${MODFONT_VERSION}/

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${MODFONT_DIR}
	${INSTALL_DATA} \
		${WRKSRC}/Recursive_Desktop/separate_statics/OTF/*.otf \
		${WRKSRC}/Recursive_Code/RecMonoCasual/*.ttf \
		${WRKSRC}/Recursive_Code/RecMonoDuotone/*.ttf \
		${WRKSRC}/Recursive_Code/RecMonoLinear/*.ttf \
		${WRKSRC}/Recursive_Code/RecMonoSemicasual/*.ttf ${MODFONT_DIR}

.include <bsd.port.mk>
