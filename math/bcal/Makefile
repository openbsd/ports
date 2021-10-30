# $OpenBSD: Makefile,v 1.9 2021/10/30 04:02:05 bcallah Exp $

# Upstream says 64-bit only.
# https://github.com/jarun/bcal/issues/4
ONLY_FOR_ARCHS =	${LP64_ARCHS}

V =		2.3
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
MODULES +=	lang/python
MODPY_RUNDEP =	No
MODPY_BUILDDEP =	No
CONFIGURE_STYLE = python.port.mk-is-annoying
TEST_DEPENDS =	devel/py-test${MODPY_FLAVOR}

USE_GMAKE =	Yes

WRKDIST =	${WRKDIR}/${PKGNAME}

# Better install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bcal ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bcal.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && python3 -m pytest test.py

.include <bsd.port.mk>
