# $OpenBSD: Makefile,v 1.2 2016/12/25 14:54:48 zhuk Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	1.0

WANTLIB =		Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =		net/avahi
RUN_DEPENDS =		net/avahi

NO_TEST =		Yes

.include <bsd.port.mk>
