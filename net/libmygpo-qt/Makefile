# $OpenBSD: Makefile,v 1.9 2019/07/12 20:48:30 sthen Exp $
COMMENT =		Qt/C++ library wrapper for the GPodder
DISTNAME =		libmygpo-qt.1.0.7
PKGNAME =		${DISTNAME:S/./-/}
REVISION =		4

SHARED_LIBS =		mygpo-qt	0.0

CATEGORIES =		audio devel net
HOMEPAGE =		http://wiki.gpodder.org/wiki/Libmygpo-qt

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB =		lib/qt4/QtNetwork m qjson ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES =		http://stefan.derkits.at/files/libmygpo-qt/

MODULES =		devel/cmake x11/qt4
LIB_DEPENDS =		devel/qjson

# picks up doxygen during configure but does not really use it
CONFIGURE_ARGS =	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen:Bool=Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/mygpo-qt
	cd ${WRKSRC}/example; pax -vrw -s '@.*/\..*@@' . \
		${PREFIX}/share/examples/mygpo-qt

.include <bsd.port.mk>
