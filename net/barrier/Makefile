# $OpenBSD: Makefile,v 1.6 2021/11/04 16:30:46 sthen Exp $

COMMENT =		mouse and keyboard sharing utility

GH_ACCOUNT =		debauchee
GH_PROJECT =		barrier
GH_TAGNAME =		v2.3.4

CATEGORIES =		net x11

WANTLIB += ${COMPILER_LIBCXX} ICE Qt5Core Qt5Gui Qt5Network Qt5Widgets
WANTLIB += SM X11 Xext Xi Xinerama Xrandr Xtst c crypto curl dns_sd
WANTLIB += m ssl

# GPLv2 only
PERMIT_PACKAGE =	Yes

MODULES =		devel/cmake \
			x11/qt5

BUILD_DEPENDS =		devel/gtest

LIB_DEPENDS =		net/curl \
			net/avahi,-libs

NO_TEST =		Yes

pre-configure:
	rm -rf ${WRKSRC}/ext/*
	sed -i 's|add_library.*||g' ${WRKSRC}/src/test/CMakeLists.txt
	sed -i 's|set_target_properties.*||g' ${WRKSRC}/src/test/CMakeLists.txt

do-install:
	${INSTALL_PROGRAM} ${WRKDIR}/build-*/bin/barrier* ${PREFIX}/bin/
	mv ${PREFIX}/bin/barrier ${PREFIX}/bin/barrier-gui
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/barrier
	${INSTALL_DATA_DIR} ${PREFIX}/share/applications
	${INSTALL_DATA_DIR} ${PREFIX}/share/icons/hicolor/scalable/apps
	${INSTALL_DATA} ${WRKSRC}/res/barrier.desktop \
		${PREFIX}/share/applications/
	${INSTALL_DATA} ${WRKSRC}/res/barrier.svg \
		${PREFIX}/share/icons/hicolor/scalable/apps/
	${INSTALL_DATA} ${WRKSRC}/doc/barrier.conf.exampl* \
		${PREFIX}/share/examples/barrier/
	${INSTALL_MAN} ${WRKSRC}/doc/barrierc.1 \
		${PREFIX}/man/man1/barrierc.1
	${INSTALL_MAN} ${WRKSRC}/doc/barriers.1 \
		${PREFIX}/man/man1/barriers.1

.include <bsd.port.mk>
