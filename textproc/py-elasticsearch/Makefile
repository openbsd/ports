COMMENT=	Python client for Elasticsearch

MODPY_DISTV=7.17.0
DISTNAME=	elasticsearch-${MODPY_DISTV}
PKGNAME=	py-elasticsearch-${MODPY_DISTV}
REVISION=	3

CATEGORIES=	textproc

HOMEPAGE=	https://www.elastic.co/guide/en/elasticsearch/client/python-api

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# Apache 2
PERMIT_PACKAGE=	Yes

# prevent fetching a file with the same DISTNAME as textproc/elasticsearch
DIST_SUBDIR=	py-elasticsearch

MODPY_PI=	Yes

MODULES=	lang/python
RUN_DEPENDS=	www/py-requests>=2.4.0,<3.0.0 \
		www/py-urllib3>=1.21.1

MODPY_PYBUILD=	setuptools

# Requires elasticsearch cluster
NO_TEST=	Yes

.include <bsd.port.mk>
