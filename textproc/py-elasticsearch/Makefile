# $OpenBSD: Makefile,v 1.12 2019/06/21 06:27:49 sebastia Exp $

COMMENT=	Python client for Elasticsearch

MODPY_EGG_VERSION=6.3.1
DISTNAME=	elasticsearch-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	textproc

HOMEPAGE=	https://www.elastic.co/guide/en/elasticsearch/client/python-api

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# Apache 2
PERMIT_PACKAGE=	Yes

# prevent fetching a file with the same DISTNAME as textproc/elasticsearch
DIST_SUBDIR=	py-elasticsearch

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	www/py-urllib3${MODPY_FLAVOR}>=1.21.1

MODPY_SETUPTOOLS= Yes

FLAVORS=	python3
FLAVOR?=

# Requires unported nosexcover
NO_TEST =	Yes

.include <bsd.port.mk>
