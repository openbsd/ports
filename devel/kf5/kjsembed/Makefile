# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:38 rsadowski Exp $

COMMENT =		KDE framework for binding JavaScript object to QObjects
DISTNAME =		kjsembed-${VERSION}

SHARED_LIBS =		KF5JsEmbed		2.0

WANTLIB =  KF5I18n KF5JS Qt5Core Qt5Gui Qt5Svg Qt5Widgets Qt5Xml
WANTLIB += c m

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/ki18n \
			devel/kf5/kjs \
			x11/qt5/qtsvg

IS_PORTING_AID =	Yes

TEST_NO =		Yes

.include <bsd.port.mk>
