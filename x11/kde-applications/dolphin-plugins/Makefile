# $OpenBSD: Makefile,v 1.1.1.1 2018/09/02 14:29:05 rsadowski Exp $

COMMENT =	Dolphin plugins
DISTNAME =	dolphin-plugins-${VERSION}
CATEGORIES =	x11

KDE5 =		Yes

BUILD_DEPENDS +=devel/gettext-tools

RUN_DEPENDS =	x11/kde-applications/dolphin

LIB_DEPENDS =	devel/kf5/kxmlgui\
		devel/kf5/ki18n \
		devel/kf5/kio \
		devel/kf5/kdelibs4support \
		devel/kf5/ktexteditor \
		devel/kf5/kwidgetsaddons \
		x11/kde-applications/dolphin

.include <bsd.port.mk>
