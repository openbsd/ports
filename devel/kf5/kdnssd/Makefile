# $OpenBSD: Makefile,v 1.7 2018/06/04 20:25:32 rsadowski Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	4.1

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =		net/avahi
RUN_DEPENDS =		net/avahi

.include <bsd.port.mk>
