# $OpenBSD: Makefile,v 1.1.1.1 2018/12/06 16:00:34 solene Exp $

COMMENT =	three dimensional console spreadsheet
V =		2.3.0
PKGNAME =	teapot-${V}

CATEGORIES =	productivity

HOMEPAGE =	https://www.syntax-k.de/projekte/teapot/

MAINTAINER =	Solene Rapenne <solene@perso.pw>

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += 	c curses m

MASTER_SITES =	https://www.syntax-k.de/projekte/teapot/

DISTFILES =	${PKGNAME}${EXTRACT_SUFX}
# binary distribution to extract the documentation
DISTFILES +=	Teapot-${V}-Linux-i386.tar.gz

MODULES =	devel/cmake

# disable LaTeX documentation compilation
CONFIGURE_ARGS +=	-DENABLE_HELP=no

NO_TEST =	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

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
