# $OpenBSD: Makefile,v 1.8 2017/06/29 17:46:47 sebastia Exp $

COMMENT=	Python client for Elasticsearch

MODPY_EGG_VERSION=5.4.0
DISTNAME=	elasticsearch-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

HOMEPAGE=	https://www.elastic.co/guide/en/elasticsearch/client/python-api

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2
PERMIT_PACKAGE_CDROM=	Yes

# prevent fetching a file with the same DISTNAME as textproc/elasticsearch
DIST_SUBDIR=	py-elasticsearch

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	www/py-urllib3

MODPY_SETUPTOOLS= Yes

# Requires unported nosexcover
NO_TEST =	Yes

.include <bsd.port.mk>
