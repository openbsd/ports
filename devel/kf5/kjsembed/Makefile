# $OpenBSD: Makefile,v 1.6 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =		KDE framework for binding JavaScript object to QObjects
DISTNAME =		kjsembed-${VERSION}

SHARED_LIBS =		KF5JsEmbed		4.0

WANTLIB += ${COMPILER_LIBCXX} KF5I18n KF5JS Qt5Core Qt5Gui Qt5Svg
WANTLIB += Qt5Widgets Qt5Xml c m

BUILD_DEPENDS =		devel/gettext-tools \
			devel/kf5/kdoctools

RUN_DEPENDS =		devel/kf5/kdoctools

LIB_DEPENDS =		devel/kf5/ki18n \
			devel/kf5/kjs \
			x11/qt5/qtsvg

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
