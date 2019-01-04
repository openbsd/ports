# $OpenBSD: Makefile,v 1.1.1.1 2019/01/04 14:44:11 pascal Exp $

COMMENT =		UPnP audio control point

DISTNAME =		upplay-1.3.1

CATEGORIES =		multimedia net

HOMEPAGE =		https://www.lesbonscomptes.com/upplay/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt5Core Qt5Gui Qt5Network Qt5Script
WANTLIB += Qt5WebKit Qt5WebKitWidgets Qt5Widgets Qt5Xml c jsoncpp
WANTLIB += m upnpp

MASTER_SITES =		https://www.lesbonscomptes.com/upplay/downloads/

USE_WXNEEDED =		Yes
MODULES =		devel/qmake \
			x11/qt5
RUN_DEPENDS =		devel/desktop-file-utils \
			x11/gtk+3,-guic
LIB_DEPENDS =		devel/jsoncpp \
			net/libupnpp \
			x11/qt5/qtscript \
			x11/qt5/qtwebkit

NO_TEST =		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/upplay.pro

.include <bsd.port.mk>
