# $OpenBSD: Makefile,v 1.9 2020/03/28 19:48:15 mariani Exp $

COMMENT =		BitTorrent client with Qt interface

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Network Qt5Xml boost_system
WANTLIB += boost_system-mt c crypto m ssl torrent-rasterbar z
WANTLIB += GL Qt5DBus Qt5Gui Qt5Svg Qt5Widgets

MODULES =		lang/python

MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}
MODPY_BUILDDEP =	No
MODPY_TESTDEP =		No

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost \
			x11/qt5/qtsvg

RUN_DEPENDS +=         	x11/gtk+3,-guic \
			devel/desktop-file-utils

# remove include directives which cause incorrect gmake behavior
pre-build:
	@cd ${WRKBUILD}/src && \
		sed -ie "/^\-include/d" Makefile

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>
