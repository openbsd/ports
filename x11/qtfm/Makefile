# $OpenBSD: Makefile,v 1.1.1.1 2019/07/27 02:07:33 bcallah Exp $

COMMENT =	desktop-independent Unix file manager
CATEGORIES =	x11

GH_ACCOUNT =	rodlie
GH_PROJECT =	qtfm
GH_TAGNAME =	6.2.0

HOMEPAGE =	https://qtfm.eu/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Widgets c lib/inotify/inotify m

MODULES =	devel/qmake \
		x11/qt5

LIB_DEPENDS =	devel/libinotify

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

MAKE_FLAGS =	CXXOPTS="-I${LOCALBASE}/include/inotify" \
		LDFLAGS="-L${LOCALBASE}/lib/inotify -linotify -Wl,-rpath,${LOCALBASE}/lib/inotify"

NO_TEST =	Yes

SUBST_VARS +=	GH_TAGNAME

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/qtfm/xdg/autostart
	mv ${WRKINST}/etc/xdg/autostart/qtfm-tray.desktop \
		${PREFIX}/share/examples/qtfm/xdg/autostart
	@rm -rf ${WRKINST}/etc/xdg

.include <bsd.port.mk>
