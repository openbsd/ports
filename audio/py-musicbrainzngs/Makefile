# $OpenBSD: Makefile,v 1.7 2020/02/11 17:46:25 kmos Exp $

COMMENT =	python bindings for musicbrainz NGS webservice

MODPY_EGG_VERSION = 0.7.1
DISTNAME =	musicbrainzngs-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
CATEGORIES =	audio

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
