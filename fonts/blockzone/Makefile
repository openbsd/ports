COMMENT =	pixel-perfect recreation of the original IBM VGA font

MODFONT_FAMILY =	blockzone

MODFONT_VERSION =	1.004
DISTNAME =	BlockZone-${MODFONT_VERSION}
REVISION =	5

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/ansilove/blockzone

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/ansilove/BlockZone/releases/download/${MODFONT_VERSION}/

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

DOCDIR =	${PREFIX}/share/doc/blockzone

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCDIR}

.include <bsd.port.mk>
