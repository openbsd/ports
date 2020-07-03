# $OpenBSD: Makefile,v 1.24 2020/07/03 21:13:11 sthen Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=5.8.1
REVISION=	1
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

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=	devel/py-certifi${MODPY_FLAVOR}>=2019.9.11 \
		devel/py-click${MODPY_FLAVOR}>=6.7,<7.0 \
		devel/py-six${MODPY_FLAVOR}>=1.11.0 \
		devel/py-voluptuous${MODPY_FLAVOR}>=0.9.3 \
		net/py-boto3${MODPY_FLAVOR}>=1.9.142 \
		security/py-requests-aws4auth${MODPY_FLAVOR}>=0.9 \
		textproc/py-elasticsearch${MODPY_FLAVOR}>=7.0.4,<8.0.0 \
		textproc/py-yaml${MODPY_FLAVOR}>=3.13 \
		www/py-requests${MODPY_FLAVOR}>=2.20.0 \
		www/py-urllib3${MODPY_FLAVOR}>=1.24.2

BUILD_DEPENDS=	${RUN_DEPENDS}

# Requires elasticsearch cluster
NO_TEST=	Yes

.include <bsd.port.mk>
