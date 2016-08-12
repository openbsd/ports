# $OpenBSD: Makefile,v 1.4 2016/08/12 07:01:43 sebastia Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=4.0.5
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
		textproc/py-elasticsearch \
		textproc/py-yaml

MODPY_SETUPTOOLS= Yes

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
