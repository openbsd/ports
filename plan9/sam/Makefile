COMMENT=	X11 version of Rob Pike's editor, sam

DISTNAME=	sam-4.3.20200714
GH_ACCOUNT=	deadpixi
GH_PROJECT=	sam
GH_COMMIT=	5d8acb35d78c327d76f00a54857cbd566ed9bc11

CATEGORIES=	plan9 editors

PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xft Xi Xt c

RUN_DEPENDS+=	devel/desktop-file-utils

NO_TEST=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/sam
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/sam
	${INSTALL_DATA} ${WRKSRC}/doc/samrc ${PREFIX}/share/examples/sam
.for f in README.rst doc/sam.ps doc/sam.tut.ms doc/se.ps
	${INSTALL_DATA} ${WRKSRC}/$f ${PREFIX}/share/doc/sam
.endfor

.include <bsd.port.mk>
