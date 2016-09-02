# $OpenBSD: Makefile,v 1.5 2016/09/02 12:36:10 sebastia Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=4.0.6
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
