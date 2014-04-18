# $OpenBSD: Makefile,v 1.1.1.1 2014/04/18 11:18:27 weerd Exp $

COMMENT =		generate random numbers

DISTNAME =		ranval-1.3
CATEGORIES =		sysutils

HOMEPAGE =		http://www.weirdnet.nl/openbsd/code/ranval/
MASTER_SITES =		http://www.weirdnet.nl/openbsd/code/ranval/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
