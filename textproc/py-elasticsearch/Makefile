# $OpenBSD: Makefile,v 1.1.1.1 2016/01/07 11:46:29 sebastia Exp $

COMMENT=	Python client for Elasticsearch

MODPY_EGG_VERSION=2.1.0
DISTNAME=	elasticsearch-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-${MODPY_EGG_VERSION}

CATEGORIES=	textproc

HOMEPAGE=	https://www.elastic.co/guide/en/elasticsearch/client/python-api

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	www/py-urllib3

MODPY_SETUPTOOLS= Yes

.include <bsd.port.mk>
