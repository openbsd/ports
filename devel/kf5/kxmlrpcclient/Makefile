# $OpenBSD: Makefile,v 1.6 2018/06/04 20:25:33 rsadowski Exp $

COMMENT =	KDE XML-RPC client
DISTNAME =	kxmlrpcclient-${VERSION}

SHARED_LIBS =	KF5XmlRpcClient		3.1

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Network Qt5Xml m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kio

.include <bsd.port.mk>
