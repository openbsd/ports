# $OpenBSD: Makefile,v 1.6 2017/05/25 13:03:28 espie Exp $

V =		2.4.0
COMMENT =	Qt5 Telegram messaging service client
DISTNAME =	cutegram-src-${V}
PKGNAME =	cutegram-${V}
CATEGORIES =	net x11
REVISION =	1

HOMEPAGE =	http://aseman.co/en/products/cutegram/

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += GL Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5Network
WANTLIB += Qt5Qml Qt5Quick Qt5Sql Qt5WebKit Qt5WebKitWidgets Qt5Widgets
WANTLIB += Qt5Xml c crypto m pthread qtelegram-ae ssl z

MASTER_SITES =	http://aseman.co/downloads/cutegram/2/

MODULES =	devel/qmake x11/qt5

LIB_DEPENDS =	devel/libqtelegram-aseman-edition \
		x11/qt5/qtbase \
		x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia \
		x11/qt5/qtwebkit

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/faenza-icon-theme \
		x11/gtk+3,-guic \
		x11/qt5/qtgraphicaleffects \
		x11/qt5/qtquickcontrols

CXXFLAGS +=	-Wno-c++11-narrowing

NO_TEST =	Yes

post-install:
	@rm ${PREFIX}/share/icons/cutegram.png

.include <bsd.port.mk>
