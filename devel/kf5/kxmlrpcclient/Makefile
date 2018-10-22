# $OpenBSD: Makefile,v 1.7 2018/10/22 20:30:43 rsadowski Exp $

COMMENT =	KDE XML-RPC client
DISTNAME =	kxmlrpcclient-${VERSION}

SHARED_LIBS =	KF5XmlRpcClient		3.2

WANTLIB += ${COMPILER_LIBCXX} KF5ConfigCore KF5CoreAddons KF5I18n
WANTLIB += KF5KIOCore KF5Service Qt5Concurrent Qt5Core Qt5DBus
WANTLIB += Qt5Network Qt5Xml m

BUILD_DEPENDS =	devel/gettext-tools

LIB_DEPENDS =	devel/kf5/ki18n \
		devel/kf5/kcoreaddons \
		devel/kf5/kservice \
		devel/kf5/kio

.include <bsd.port.mk>
