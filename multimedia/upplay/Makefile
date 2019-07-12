# $OpenBSD: Makefile,v 1.4 2019/07/12 20:47:58 sthen Exp $

COMMENT =		UPnP audio control point

DISTNAME =		upplay-1.3.3

CATEGORIES =		multimedia net

HOMEPAGE =		https://www.lesbonscomptes.com/upplay/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Script
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml c jsoncpp
WANTLIB += m upnpp

MASTER_SITES =		https://www.lesbonscomptes.com/upplay/downloads/

# C++11
COMPILER =		base-clang ports-gcc

USE_WXNEEDED =		Yes
MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/jsoncpp \
			net/libupnpp>=0.17.1 \
			x11/qt5/qtscript \
			x11/qt5/qtwebkit

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/upplay.pro

.include <bsd.port.mk>
