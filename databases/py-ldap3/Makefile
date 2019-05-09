# $OpenBSD: Makefile,v 1.1.1.1 2019/05/09 11:49:10 jasper Exp $

COMMENT =	RFC4510 conforming LDAP V3 pure Python client library

MODPY_EGG_VERSION =	2.6
DISTNAME =	ldap3-${MODPY_EGG_VERSION}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	databases

HOMEPAGE =	https://github.com/cannatag/ldap3

# LGPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/python

MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

RUN_DEPENDS =	devel/py-asn1${MODPY_FLAVOR}

FLAVORS =	python3
FLAVOR ?=

.include <bsd.port.mk>
