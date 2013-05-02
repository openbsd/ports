# $OpenBSD: Makefile,v 1.1.1.1 2013/05/02 19:09:18 matthew Exp $

COMMENT =		a small build system with a focus on speed
V =			1.2.0
DISTNAME =		ninja-${V}
CATEGORIES =		devel
HOMEPAGE =		http://martine.github.io/ninja/
MAINTAINER =		Matthew Dempsky <matthew@dempsky.org>

# Apache License v2.0
PERMIT_PACKAGE_CDROM =	Yes

# c>=68.1 needed for ppoll
WANTLIB =		c>=68.1 m stdc++

MASTER_SITES =		https://github.com/martine/ninja/archive/v${V}.tar.gz?bleh=/

MODULES =		lang/python

MODPY_ADJ_FILES =	bootstrap.py \
			configure.py \
			src/browse.py

# Not strictly required, but will be used if available.  Included as a build
# dependency to ensure consistent builds.
BUILD_DEPENDS =		devel/re2c

MAKE_ENV =		CXX="${CXX}"

do-build:
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} \
	    ${MODPY_BIN} ./bootstrap.py --verbose

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ninja ${PREFIX}/bin

.include <bsd.port.mk>
