# $OpenBSD: Makefile,v 1.16 2021/02/16 23:02:07 sthen Exp $

COMMENT =		collection of ASN.1 data structures for py-asn1

MODPY_EGG_VERSION =	0.2.7
DISTNAME =		pyasn1-modules-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/py-/}
CATEGORIES =		devel
REVISION =		1

HOMEPAGE =		https://github.com/etingof/pyasn1

# BSD 2-Clause
PERMIT_PACKAGE =	Yes

MODPY_PI =		Yes

MODULES =		lang/python

FLAVORS =		python3
FLAVOR =		python3

MODPY_SETUPTOOLS =	Yes
MODPY_PYTEST =		Yes

RUN_DEPENDS =		devel/py-asn1${MODPY_FLAVOR}

MODPY_ADJ_FILES =	tools/*.py

TEST_ENV +=		PYTHONPATH=${WRKINST}/${MODPY_SITEPKG}

.include <bsd.port.mk>
