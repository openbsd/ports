# $OpenBSD: Makefile,v 1.3 2017/07/27 09:34:38 sthen Exp $

COMMENT =	KDE XML-RPC client
DISTNAME =	kxmlrpcclient-${VERSION}
REVISION =	0

SHARED_LIBS =	KF5XmlRpcClient		1.0

WANTLIB =  KF5ConfigCore KF5CoreAddons KF5I18n KF5KIOCore KF5Service
WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5Xml m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kio

.include <bsd.port.mk>
