# $OpenBSD: Makefile,v 1.11 2020/03/23 18:01:07 rsadowski Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	5.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =	net/avahi
RUN_DEPENDS =	net/avahi

.include <bsd.port.mk>
