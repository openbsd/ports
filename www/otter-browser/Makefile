# $OpenBSD: Makefile,v 1.36 2022/02/13 16:38:30 rsadowski Exp $

USE_WXNEEDED =	Yes

COMMENT =	browser aiming to recreate classic Opera (12.x) UI using Qt5

DISTNAME =	otter-browser-1.0.02
REVISION =	0

CATEGORIES =	www

HOMEPAGE =	https://otter-browser.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=otter-browser/}
EXTRACT_SUFX =	.tar.bz2

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5Positioning Qt5PrintSupport Qt5Qml Qt5QmlModels
WANTLIB += Qt5Quick Qt5Svg Qt5WebChannel Qt5WebEngineCore Qt5WebEngineWidgets
WANTLIB += Qt5Widgets Qt5XmlPatterns c hunspell-1.7 m

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
