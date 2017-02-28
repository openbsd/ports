# $OpenBSD: Makefile,v 1.11 2017/02/28 16:20:17 jasper Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=4.2.6
REVISION =	0
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
		textproc/py-elasticsearch>=5,<6 \
		textproc/py-yaml

MODPY_SETUPTOOLS= Yes

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
