# $OpenBSD: Makefile,v 1.5 2019/07/14 00:39:39 naddy Exp $

COMMENT =		test operating environment software robustness

# miod's modified version from cvs
DISTNAME =		crashme-2.4

REVISION =		1

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://distfiles.nl/
NO_TEST =		Yes
WANTLIB =		c

do-build:
	cd ${WRKSRC} && env -i ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} crashme

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/crashme ${PREFIX}/bin/crashme
	${INSTALL_MAN} ${WRKSRC}/crashme.man ${PREFIX}/man/man1/crashme.1

.include <bsd.port.mk>
