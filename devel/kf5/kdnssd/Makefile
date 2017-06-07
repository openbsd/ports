# $OpenBSD: Makefile,v 1.3 2017/06/07 17:03:37 rsadowski Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}

SHARED_LIBS =		KF5DNSSD	2.0

WANTLIB =		Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =		net/avahi
RUN_DEPENDS =		net/avahi

NO_TEST =		Yes

.include <bsd.port.mk>
