# $OpenBSD: Makefile,v 1.26 2020/05/20 15:43:22 bcallah Exp $

COMMENT =	collaborative drawing program
DISTNAME =	drawpile-2.1.17
CATEGORIES =	graphics x11

HOMEPAGE =	https://drawpile.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Override kf5.port.mk
EXTRACT_SUFX =	.tar.gz

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5DNSSD Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += c gif gio-2.0 glib-2.0 gobject-2.0 intl m microhttpd
WANTLIB += miniupnpc qt5keychain secret-1 sodium vpx

MASTER_SITES =	https://drawpile.net/files/src/

MODULES =	devel/kf5

LIB_DEPENDS =	devel/kf5/karchive \
		devel/kf5/kdnssd \
		graphics/giflib \
		multimedia/libvpx \
		net/miniupnp/miniupnpc \
		security/libsodium \
		security/qtkeychain \
		www/libmicrohttpd \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg

RUN_DEPENDS =	devel/desktop-file-utils \
		misc/shared-mime-info \
		x11/gtk+3,-guic

CONFIGURE_ARGS =	-DCMAKE_CXX_FLAGS="${CXXFLAGS} -I${LOCALBASE}/include"

NO_TEST =	Yes

.include <bsd.port.mk>
