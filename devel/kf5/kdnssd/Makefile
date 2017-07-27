# $OpenBSD: Makefile,v 1.4 2017/07/27 09:34:38 sthen Exp $

COMMENT =		network service discovery using Zeroconf for KDE
DISTNAME =		kdnssd-${VERSION}
REVISION =		0

SHARED_LIBS =		KF5DNSSD	2.0

WANTLIB =		${COMPILER_LIBCXX} Qt5Core Qt5DBus Qt5Network m

BUILD_DEPENDS =		net/avahi
RUN_DEPENDS =		net/avahi

NO_TEST =		Yes

.include <bsd.port.mk>
