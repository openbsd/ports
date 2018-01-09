# $OpenBSD: Makefile,v 1.6 2018/01/09 21:10:39 rsadowski Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	4.0

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =		net/avahi
RUN_DEPENDS =		net/avahi

.include <bsd.port.mk>
