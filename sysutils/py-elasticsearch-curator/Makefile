COMMENT=	manage Elasticsearch indices

MODPY_DISTV=5.8.4
DISTNAME=	elasticsearch-curator-${MODPY_DISTV}
PKGNAME=	${MODPY_PY_PREFIX}elasticsearch-curator-${MODPY_DISTV}
REVISION=	3

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/elastic/curator

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-certifi>=2019.9.11 \
		devel/py-click>=7.0,<9 \
		devel/py-six>=1.11.0 \
		devel/py-voluptuous>=0.9.3 \
		net/py-boto3>=1.9.142 \
		security/py-requests-aws4auth>=0.9 \
		textproc/py-elasticsearch>=7.16.0,<8.0.0 \
		textproc/py-yaml>=5.3.1 \
		www/py-requests>=2.20.0 \
		www/py-urllib3>=1.24.2

BUILD_DEPENDS=	${RUN_DEPENDS}

# Requires elasticsearch cluster
NO_TEST=	Yes

.include <bsd.port.mk>
