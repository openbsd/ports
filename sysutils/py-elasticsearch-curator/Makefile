COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=5.8.4
DISTNAME=	elasticsearch-curator-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}elasticsearch-curator-${MODPY_EGG_VERSION}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/elastic/curator

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS= Yes

RUN_DEPENDS=	devel/py-certifi${MODPY_FLAVOR}>=2019.9.11 \
		devel/py-click${MODPY_FLAVOR}>=7.0,<8 \
		devel/py-six${MODPY_FLAVOR}>=1.11.0 \
		devel/py-voluptuous${MODPY_FLAVOR}>=0.9.3 \
		net/py-boto3${MODPY_FLAVOR}>=1.9.142 \
		security/py-requests-aws4auth${MODPY_FLAVOR}>=0.9 \
		textproc/py-elasticsearch${MODPY_FLAVOR}>=7.16.0,<8.0.0 \
		textproc/py-yaml${MODPY_FLAVOR}>=5.3.1 \
		www/py-requests${MODPY_FLAVOR}>=2.20.0 \
		www/py-urllib3${MODPY_FLAVOR}>=1.24.2

BUILD_DEPENDS=	${RUN_DEPENDS}

# Requires elasticsearch cluster
NO_TEST=	Yes

.include <bsd.port.mk>
