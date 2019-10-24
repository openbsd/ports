# $OpenBSD: Makefile,v 1.13 2019/10/24 13:33:35 pvk Exp $

COMMENT=	Python client for Elasticsearch

MODPY_EGG_VERSION=7.0.5
DISTNAME=	elasticsearch-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

HOMEPAGE=	https://www.elastic.co/guide/en/elasticsearch/client/python-api

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# Apache 2
PERMIT_PACKAGE=	Yes

# prevent fetching a file with the same DISTNAME as textproc/elasticsearch
DIST_SUBDIR=	py-elasticsearch

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	www/py-requests${MODPY_FLAVOR}>=2.4.0,<3.0.0 \
		www/py-urllib3${MODPY_FLAVOR}>=1.21.1

MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

# Requires unported nosexcover
NO_TEST =	Yes

.include <bsd.port.mk>
