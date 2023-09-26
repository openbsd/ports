COMMENT =	collaborative drawing program
DISTNAME =	drawpile-2.1.20
CATEGORIES =	graphics x11
REVISION =	0

HOMEPAGE =	https://drawpile.net/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# Override kf5.port.mk
EXTRACT_SUFX =	.tar.gz

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} KF5Archive KF5DNSSD Qt5Core Qt5DBus
WANTLIB += Qt5Gui Qt5Multimedia Qt5Network Qt5Sql Qt5Svg Qt5Widgets
WANTLIB += c gif m microhttpd miniupnpc qt5keychain sodium vpx

SITES =		https://drawpile.net/files/src/

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
		x11/gtk+4,-guic

CXXFLAGS +=	-I${LOCALBASE}/include

NO_TEST =	Yes

.include <bsd.port.mk>
