# $OpenBSD: Makefile,v 1.30 2019/07/12 20:50:49 sthen Exp $

COMMENT =	browser aiming to recreate classic Opera (12.x) UI using Qt5

DISTNAME =	otter-browser-0.9.94
REVISION =	2

CATEGORIES =	www

HOMEPAGE =	https://otter-browser.org/

MAINTAINER =	Adam Wolk <awolk@openbsd.org>

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=otter-browser/}
EXTRACT_SUFX =	.tar.bz2

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Gui Qt5Multimedia
WANTLIB += Qt5Network Qt5PrintSupport Qt5Qml Qt5Svg Qt5WebKit
WANTLIB += Qt5WebKitWidgets Qt5Widgets Qt5XmlPatterns c hunspell-1.6
WANTLIB += m

MODULES =	devel/cmake x11/qt5

RUN_DEPENDS =	devel/desktop-file-utils x11/gtk+3,-guic

LIB_DEPENDS =	textproc/hunspell \
		x11/qt5/qtdeclarative \
		x11/qt5/qtmultimedia \
		x11/qt5/qtsvg \
		x11/qt5/qtwebkit \
		x11/qt5/qtxmlpatterns

NO_TEST =	Yes

.include <bsd.port.mk>
