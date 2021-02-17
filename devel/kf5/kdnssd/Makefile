# $OpenBSD: Makefile,v 1.13 2021/02/17 15:53:33 rsadowski Exp $

COMMENT =		network service discovery using Zeroconf for KDE
VERSION =		5.79.1
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	6.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =	net/avahi
RUN_DEPENDS =	net/avahi

.include <bsd.port.mk>
