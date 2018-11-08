# $OpenBSD: Makefile,v 1.2 2018/11/08 04:35:48 bcallah Exp $

# Upstream says 64-bit only.
# https://github.com/jarun/bcal/issues/4
ONLY_FOR_ARCHS =	${LP64_ARCHS}

COMMENT =	storage and general-purpose calculator (Byte CALculator)
DISTNAME =	bcal-2.0
CATEGORIES =	math sysutils

# Upstream will have real tarballs beginning next release.
# See: https://github.com/jarun/bcal/issues/20
GH_ACCOUNT =	jarun
GH_PROJECT =	bcal
GH_COMMIT =	435b5ebc3487af68a66c3037c986dbdf89a254db

#HOMEPAGE =	https://github.com/jarun/bcal
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c curses readline

#MASTER_SITES =	https://github.com/jarun/bcal/releases/download/v${V}/

# Test script is a Python 3 script.
# It is not worth invoking the python MODULE for this.
TEST_DEPENDS =	devel/py-test,python3

USE_GMAKE =	Yes

# Better install routine
do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bcal ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/bcal.1 ${PREFIX}/man/man1

do-test:
	cd ${WRKSRC} && python3 -m pytest test.py

.include <bsd.port.mk>
