# $OpenBSD: Makefile,v 1.3 2020/07/25 21:45:51 kmos Exp $

COMMENT =		RAR archive reader for Python

MODPY_EGG_VERSION =	3.2

DISTNAME =		rarfile-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}

CATEGORIES =		archivers

HOMEPAGE =		https://github.com/markokr/rarfile

MAINTAINER =		Kurt Mosiejczuk <kmos@openbsd.org>

# ISC
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR =		python3

RUN_DEPENDS =		archivers/libarchive \
			archivers/unrar

.include <bsd.port.mk>
