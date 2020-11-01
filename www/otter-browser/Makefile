# $OpenBSD: Makefile,v 1.34 2020/11/01 23:05:14 cwen Exp $

COMMENT =	browser aiming to recreate classic Opera (12.x) UI using Qt5

DISTNAME =	otter-browser-1.0.01
REVISION =	2

CATEGORIES =	www

HOMEPAGE =	https://otter-browser.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=otter-browser/}
EXTRACT_SUFX =	.tar.bz2

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += Qt5Core Qt5DBus Qt5Gui Qt5Multimedia Qt5Network Qt5Positioning
WANTLIB += Qt5PrintSupport Qt5Qml Qt5Quick Qt5Svg Qt5WebChannel
WANTLIB += Qt5WebEngineCore Qt5WebEngineWidgets Qt5Widgets Qt5XmlPatterns
WANTLIB += c hunspell-1.7 m

MODULES =	devel/cmake x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils x11/gtk+3,-guic

LIB_DEPENDS =	textproc/hunspell \
		x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg \
		x11/qt5/qtwebengine \
		x11/qt5/qtxmlpatterns

CONFIGURE_ARGS +=	-DENABLE_QTWEBENGINE=ON \
			-DENABLE_QTWEBKIT=OFF

NO_TEST =	Yes

.include <bsd.port.mk>
