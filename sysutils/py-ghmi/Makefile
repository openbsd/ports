# $OpenBSD: Makefile,v 1.24 2019/07/12 20:49:49 sthen Exp $

COMMENT =		pure python IPMI protocol library

MODPY_EGG_VERSION =	1.3.0
DISTNAME =		pyghmi-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/${MODPY_PY_PREFIX}/}

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/openstack/pyghmi

# Apache2
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

FLAVORS =		python3
FLAVOR ?=

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR} \
			security/py-cryptography${MODPY_FLAVOR}
RUN_DEPENDS =		security/py-cryptography${MODPY_FLAVOR}

# Requires unported oslotest
NO_TEST =		Yes

post-install:
.for s in fakebmc pyghmicons pyghmiutil virshbmc
	mv ${PREFIX}/bin/$s{,${MODPY_BIN_SUFFIX}}
.endfor

.include <bsd.port.mk>
