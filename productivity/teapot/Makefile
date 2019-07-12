# $OpenBSD: Makefile,v 1.3 2019/07/12 20:48:59 sthen Exp $

COMMENT =	three dimensional console spreadsheet
V =		2.3.0
DISTNAME =	teapot-${V}
REVISION =	0

CATEGORIES =	productivity

HOMEPAGE =	https://www.syntax-k.de/projekte/teapot/

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB += 	c curses m

MASTER_SITES =	https://www.syntax-k.de/projekte/teapot/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX}
# binary distribution to extract the documentation
DISTFILES +=	Teapot-${V}-Linux-i386.tar.gz

MODULES =	devel/cmake

# disable LaTeX documentation compilation
CONFIGURE_ARGS +=	-DENABLE_HELP=no

NO_TEST =	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/teapot.1
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/teapot
	@cd ${WRKSRC}/examples; tar cf - . | \
		tar xf - -C ${PREFIX}/share/examples/teapot
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/teapot
	@cd ${WRKDIR}/Teapot-${V}-Linux/share/doc/teapot/; tar cf - . | \
		tar xf - -C ${PREFIX}/share/doc/teapot/

.include <bsd.port.mk>
