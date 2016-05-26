# $OpenBSD: Makefile,v 1.1.1.1 2016/05/26 23:58:58 zhuk Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	0.0

WANTLIB =		Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =		net/avahi
RUN_DEPENDS =		net/avahi

.include <bsd.port.mk>
