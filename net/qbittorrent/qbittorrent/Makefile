COMMENT =		BitTorrent client with Qt interface
REVISION =		1

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5DBus Qt5Gui Qt5Network
WANTLIB += Qt5Sql Qt5Svg Qt5Widgets Qt5Xml boost_system-mt c crypto
WANTLIB += execinfo m ssl torrent-rasterbar z

MODULES =		lang/python

MODPY_BUILDDEP =	No
MODPY_TESTDEP =		No

LIB_DEPENDS +=		net/libtorrent-rasterbar \
			devel/boost \
			x11/qt5/qtsvg

RUN_DEPENDS +=		x11/gtk+3,-guic \
			devel/desktop-file-utils

# remove include directives which cause incorrect gmake behavior
pre-build:
	@cd ${WRKBUILD}/src && \
		sed -ie "/^\-include/d" Makefile

pre-install:
	${SUBST_CMD} ${WRKSRC}/conf.pri

.include <bsd.port.mk>
