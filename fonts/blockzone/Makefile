COMMENT =	pixel-perfect recreation of the original IBM VGA font

TYPEFACE =	BlockZone

V =		1.004
DISTNAME =	BlockZone-$V
REVISION =	4

CATEGORIES =	fonts

HOMEPAGE =	https://github.com/ansilove/blockzone

# SIL OFL 1.1
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/ansilove/BlockZone/releases/download/$V/

MODULES =	font

NO_BUILD =	Yes
NO_TEST =	Yes

DOCDIR =	${PREFIX}/share/doc/blockzone

post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKSRC}/LICENSE ${DOCDIR}

.include <bsd.port.mk>
