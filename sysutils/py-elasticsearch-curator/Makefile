# $OpenBSD: Makefile,v 1.2 2016/01/27 09:16:06 sebastia Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=3.4.0
DISTNAME=	elasticsearch-curator-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-curator-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/elastic/curator

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	devel/py-click \
                textproc/py-elasticsearch

MODPY_SETUPTOOLS= Yes

.include <bsd.port.mk>
