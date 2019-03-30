# $OpenBSD: Makefile,v 1.10 2019/03/30 09:13:50 rsadowski Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	4.3

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =	net/avahi
RUN_DEPENDS =	net/avahi

.include <bsd.port.mk>
