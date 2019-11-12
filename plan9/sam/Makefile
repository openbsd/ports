# $OpenBSD: Makefile,v 1.33 2019/11/12 05:07:44 jsg Exp $

COMMENT=	X11 version of Rob Pike's editor, sam

DISTNAME=	sam-4.3.20190427
GH_ACCOUNT=	deadpixi
GH_PROJECT=	sam
GH_COMMIT=	5893679bbbab2f50ceb6ef0805e4bb63f5f51df8
REVISION=	0

CATEGORIES=	plan9

PERMIT_PACKAGE=	Yes
WANTLIB=		X11 Xft Xi Xt c

RUN_DEPENDS+=	devel/desktop-file-utils

NO_TEST=	Yes

SAMDOCDIR=	${PREFIX}/share/doc/sam
SAMDOCFILES=	README.rst doc/sam.ps doc/sam.tut.ms doc/se.ps
EXAMPLEDIR=	${PREFIX}/share/examples/sam

post-install:
	${INSTALL_DATA_DIR} ${SAMDOCDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/samrc ${EXAMPLEDIR}
	@set -e; for f in ${SAMDOCFILES}; do \
	 ${INSTALL_DATA} ${WRKSRC}/$${f} ${SAMDOCDIR}; \
	done

.include <bsd.port.mk>
