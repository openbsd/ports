# $OpenBSD: Makefile,v 1.4 2017/08/07 12:34:24 sthen Exp $

COMMENT =		multicast proxy daemon

DISTNAME =		mcast-proxy-1.0
CATEGORIES =		net
REVISION =		2

MASTER_SITES =		http://www.weirdnet.nl/openbsd/code/mcast-proxy/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c event

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/sbin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
