# $OpenBSD: Makefile,v 1.7 2020/10/24 11:17:45 sthen Exp $

COMMENT =	RFC4510 conforming LDAP V3 pure Python client library

MODPY_EGG_VERSION =	2.8.1
DISTNAME =	ldap3-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}
REVISION =	0

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
