# $OpenBSD: Makefile,v 1.15 2017/06/29 17:48:22 sebastia Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=5.1.1
DISTNAME=	elasticsearch-curator-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-curator-${MODPY_EGG_VERSION}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/elastic/curator

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	devel/py-certifi>=2017.4.17 \
		devel/py-click>=6.7 \
		devel/py-voluptuous \
		textproc/py-elasticsearch>=5.4,<6 \
		textproc/py-yaml

MODPY_SETUPTOOLS= Yes

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
