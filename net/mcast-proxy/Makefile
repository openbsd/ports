# $OpenBSD: Makefile,v 1.6 2019/07/12 20:48:32 sthen Exp $

COMMENT =		multicast proxy daemon

DISTNAME =		mcast-proxy-1.0
CATEGORIES =		net
REVISION =		3

MASTER_SITES =		http://www.weirdnet.nl/openbsd/code/mcast-proxy/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c event

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/sbin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
