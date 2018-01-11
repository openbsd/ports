# $OpenBSD: Makefile,v 1.5 2018/01/11 19:27:06 rpe Exp $

COMMENT =		multicast proxy daemon

DISTNAME =		mcast-proxy-1.0
CATEGORIES =		net
REVISION =		3

MASTER_SITES =		http://www.weirdnet.nl/openbsd/code/mcast-proxy/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c event

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/sbin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
