# $OpenBSD: Makefile,v 1.12 2020/03/23 18:01:09 rsadowski Exp $

COMMENT =		KDE framework for binding JavaScript object to QObjects
DISTNAME =		kjsembed-${VERSION}

SHARED_LIBS =		KF5JsEmbed		5.0

WANTLIB += ${COMPILER_LIBCXX} GL KF5I18n KF5JS Qt5Core Qt5Gui
WANTLIB += Qt5Svg Qt5Widgets Qt5Xml c m

BUILD_DEPENDS =		devel/gettext,-tools \
			devel/kf5/kdoctools>=${MODKF5_VERSION}

RUN_DEPENDS =		devel/kf5/kdoctools>=${MODKF5_VERSION}

LIB_DEPENDS =		devel/kf5/ki18n>=${MODKF5_VERSION} \
			devel/kf5/kjs>=${MODKF5_VERSION} \
			x11/qt5/qtsvg

IS_PORTING_AID =	Yes

.include <bsd.port.mk>
