COMMENT=	Python client for the Prometheus monitoring system

MODPY_DISTV=	0.24.1
DISTNAME=	prometheus_client-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	sysutils

# https://github.com/prometheus/client_python
HOMEPAGE=	https://prometheus.github.io/client_python/

# Apache License v2
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

TEST_DEPENDS=	www/py-asgiref

.include <bsd.port.mk>
