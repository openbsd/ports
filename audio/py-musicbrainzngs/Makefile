# $OpenBSD: Makefile,v 1.8 2020/07/03 21:12:35 sthen Exp $

COMMENT =	python bindings for musicbrainz NGS webservice

MODPY_EGG_VERSION = 0.7.1
DISTNAME =	musicbrainzngs-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio
REVISION =	0

HOMEPAGE =	https://python-musicbrainzngs.readthedocs.org/

# BSD
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python
MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
