# $OpenBSD: Makefile,v 1.5 2016/09/14 13:02:10 czarkoff Exp $

COMMENT =		SVG scrubber
MODPY_EGG_VERSION =	0.35
CATEGORIES =		graphics
MAINTAINER =		Dmitrij D. Czarkoff <czarkoff@openbsd.org>
HOMEPAGE =		http://www.codedread.com/scour/

PERMIT_PACKAGE_CDROM =	Yes

GH_ACCOUNT =		codedread
GH_PROJECT =		scour
GH_TAGNAME =		v${MODPY_EGG_VERSION}

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
RUN_DEPENDS =		devel/py-six${MODPY_FLAVOR}

FLAVORS =		python3
FLAVOR ?=

# Explicitly set PKGNAME because otherwise it is set too late, so that REVISION
# and EPOCH are put into wrong spot
PKGNAME =		scour-${MODPY_EGG_VERSION}

# Prevent MODPY's removal of ${FLAVOR_EXT}
FULLPKGNAME =		${PKGNAME}${FLAVOR_EXT}

do-test:
	@cd ${WRKDIST} && ${MODPY_BIN} testscour.py
	@cd ${WRKDIST} && ${MODPY_BIN} testcss.py

.include <bsd.port.mk>
