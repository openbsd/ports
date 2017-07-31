# $OpenBSD: Makefile,v 1.2 2017/07/31 08:03:40 ajacoutot Exp $

COMMENT =		multicast proxy daemon

DISTNAME =		mcast-proxy-1.0
CATEGORIES =		net
REVISION =		0

HOMEPAGE =		http://www.weirdnet.nl/openbsd/code/mcast-proxy/
MASTER_SITES =		http://www.weirdnet.nl/openbsd/code/mcast-proxy/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c event

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
