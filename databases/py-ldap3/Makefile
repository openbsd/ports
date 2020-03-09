# $OpenBSD: Makefile,v 1.4 2020/03/09 11:34:17 sthen Exp $

COMMENT =	RFC4510 conforming LDAP V3 pure Python client library

MODPY_EGG_VERSION =	2.7
DISTNAME =	ldap3-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	databases

HOMEPAGE =	https://github.com/cannatag/ldap3

# LGPLv3
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# test directory incomplete in pypi upload; missing files are in the
# github repo but they also require network access.
NO_TEST =		Yes

RUN_DEPENDS =	devel/py-asn1${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
