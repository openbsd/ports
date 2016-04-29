# $OpenBSD: Makefile,v 1.2 2016/04/29 12:51:13 sthen Exp $

COMMENT =		generate random numbers

DISTNAME =		ranval-1.4
CATEGORIES =		sysutils

HOMEPAGE =		http://www.weirdnet.nl/openbsd/code/ranval/
MASTER_SITES =		http://www.weirdnet.nl/openbsd/code/ranval/

MAINTAINER =		Paul de Weerd <weerd@weirdnet.nl>

# ISC
PERMIT_PACKAGE_CDROM =	Yes

# uses pledge()
WANTLIB =		c

NO_TEST =		Yes

FAKE_FLAGS =		BINDIR="${PREFIX}/bin" MANDIR="${PREFIX}/man/man"

.include <bsd.port.mk>
