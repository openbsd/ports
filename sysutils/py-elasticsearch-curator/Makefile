# $OpenBSD: Makefile,v 1.10 2017/02/04 18:27:18 sebastia Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=4.2.6
DISTNAME=	elasticsearch-curator-${MODPY_EGG_VERSION}
PKGNAME=	py-elasticsearch-curator-${MODPY_EGG_VERSION}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/elastic/curator

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODPY_PI =	Yes

MODULES=	lang/python
RUN_DEPENDS=	devel/py-certifi>=2017.1.23 \
		devel/py-click \
		devel/py-voluptuous \
		textproc/py-elasticsearch>=2.4.0,<3 \
		textproc/py-yaml

MODPY_SETUPTOOLS= Yes

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
