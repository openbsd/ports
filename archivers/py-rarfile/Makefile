# $OpenBSD: Makefile,v 1.5 2021/11/02 00:00:13 sthen Exp $

COMMENT =		RAR archive reader for Python

MODPY_EGG_VERSION =	4.0

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
FLAVOR =		python3

RUN_DEPENDS =		archivers/libarchive \
			archivers/unrar

.include <bsd.port.mk>
