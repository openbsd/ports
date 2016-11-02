# $OpenBSD: Makefile,v 1.3 2016/11/02 08:28:33 jasper Exp $

COMMENT =		pure python IPMI protocol library

MODPY_EGG_VERSION =	1.0.12
DISTNAME =		pyghmi-${MODPY_EGG_VERSION}
PKGNAME =		${DISTNAME:S/py/${MODPY_PY_PREFIX}/}

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

CATEGORIES =		sysutils

HOMEPAGE =		https://github.com/openstack/pyghmi

# Apache2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/python
MODPY_PI =		Yes
MODPY_SETUPTOOLS =	Yes

# XXX: not yet, bin/ scripts aren't ready yet.
#FLAVORS =		python3
#FLAVOR ?=

BUILD_DEPENDS =		devel/py-pbr${MODPY_FLAVOR} \
			security/py-crypto${MODPY_FLAVOR}
RUN_DEPENDS =		security/py-crypto${MODPY_FLAVOR}

.include <bsd.port.mk>
