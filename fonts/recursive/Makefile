COMMENT =	variable type family built for better code and UI

TYPEFACE =	recursive
V =		1.085
DISTNAME =	ArrowType-Recursive-$V

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/arrowtype/recursive

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/arrowtype/recursive/releases/download/v$V/

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

do-install:
	${INSTALL_DATA_DIR} ${FONTDIR}
	${INSTALL_DATA} \
		${WRKSRC}/Recursive_Desktop/separate_statics/OTF/*.otf \
		${WRKSRC}/Recursive_Code/RecMonoCasual/*.ttf \
		${WRKSRC}/Recursive_Code/RecMonoDuotone/*.ttf \
		${WRKSRC}/Recursive_Code/RecMonoLinear/*.ttf \
		${WRKSRC}/Recursive_Code/RecMonoSemicasual/*.ttf ${FONTDIR}

.include <bsd.port.mk>
