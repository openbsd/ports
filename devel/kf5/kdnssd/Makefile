# $OpenBSD: Makefile,v 1.9 2019/03/08 20:00:42 cwen Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5DNSSD	4.2

WANTLIB += ${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =		net/avahi
RUN_DEPENDS =		net/avahi

.include <bsd.port.mk>
