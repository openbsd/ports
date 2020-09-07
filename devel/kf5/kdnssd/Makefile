# $OpenBSD: Makefile,v 1.12 2020/09/07 14:48:46 rsadowski Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	6.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =	net/avahi
RUN_DEPENDS =	net/avahi

.include <bsd.port.mk>
