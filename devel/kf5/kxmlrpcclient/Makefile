# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:59 zhuk Exp $

COMMENT =	KDE XML-RPC client
DISTNAME =	kxmlrpcclient-${VERSION}

SHARED_LIBS =	KF5XmlRpcClient		0.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5I18n KF5KIOCore KF5Service
WANTLIB += Qt5Core Qt5Xml m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kio

.include <bsd.port.mk>
