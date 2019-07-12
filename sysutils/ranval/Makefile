# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:50 sthen Exp $

COMMENT =		generate random numbers

DISTNAME =		ranval-1.4
CATEGORIES =		sysutils

HOMEPAGE =		http://www.weirdnet.nl/openbsd/code/ranval/
MASTER_SITES =		http://www.weirdnet.nl/openbsd/code/ranval/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB =		c

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
