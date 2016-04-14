# $OpenBSD: Makefile,v 1.3 2016/04/14 06:13:44 jasper Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=3.5.1
DISTNAME=	elasticsearch-curator-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-curator-${MODPY_EGG_VERSION}

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

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
