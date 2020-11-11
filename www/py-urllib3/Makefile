# $OpenBSD: Makefile,v 1.19 2020/11/11 09:47:04 sebastia Exp $

COMMENT=	HTTP library for Python

MODPY_EGG_VERSION=1.26.0
DISTNAME=	urllib3-${MODPY_EGG_VERSION}
PKGNAME=	py-urllib3-${MODPY_EGG_VERSION}

CATEGORIES=	www


# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI =	Yes

MODULES=	lang/python

MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes

TEST_DEPENDS =		devel/py-mock${MODPY_FLAVOR} \
			net/py-socks${MODPY_FLAVOR} \
			sysutils/py-psutil${MODPY_FLAVOR} \
			security/py-trustme${MODPY_FLAVOR} \
			www/py-tornado${MODPY_FLAVOR}

TEST_ENV +=		PYTHONPATH=${WRKSRC}/src

FLAVORS =		python3
FLAVOR ?=

.include <bsd.port.mk>
