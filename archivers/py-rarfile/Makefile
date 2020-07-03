# $OpenBSD: Makefile,v 1.2 2020/07/03 21:12:34 sthen Exp $

COMMENT =		RAR archive reader for Python

MODPY_EGG_VERSION =	3.1

DISTNAME =		rarfile-${MODPY_EGG_VERSION}
PKGNAME =		py-${DISTNAME}
REVISION =		0

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
FLAVOR ?=

RUN_DEPENDS =		archivers/libarchive \
			archivers/unrar

.include <bsd.port.mk>
