# $OpenBSD: Makefile,v 1.5 2020/01/10 15:03:23 bcallah Exp $

# Upstream says 64-bit only.
# https://github.com/jarun/bcal/issues/4
ONLY_FOR_ARCHS =	${LP64_ARCHS}

V =		2.2
COMMENT =	storage and general-purpose calculator (Byte CALculator)
DISTNAME =	bcal-v${V}
PKGNAME =	bcal-${V}
CATEGORIES =	math sysutils

HOMEPAGE =	https://github.com/jarun/bcal
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c curses readline

MASTER_SITES =	https://github.com/jarun/bcal/releases/download/v${V}/

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# Test script is a Python 3 script.
# It is not worth invoking the python MODULE for this.
TEST_DEPENDS =	devel/py-test,python3

USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/bcal

# Better install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bcal ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bcal.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && python3 -m pytest test.py

.include <bsd.port.mk>
