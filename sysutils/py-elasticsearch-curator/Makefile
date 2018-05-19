# $OpenBSD: Makefile,v 1.17 2018/05/19 22:32:59 pvk Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=5.5.2
DISTNAME=	elasticsearch-curator-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}elasticsearch-curator-${MODPY_EGG_VERSION}

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/elastic/curator

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS= Yes

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

BUILD_DEPENDS=	devel/py-certifi,python3>=2018.4.16 \
		devel/py-click,python3>=6.7 \
		devel/py-six,python3>=1.11.0 \
		devel/py-voluptuous,python3>=0.9.3 \
		textproc/py-elasticsearch,python3>=5.5.2,<7.0.0 \
		textproc/py-yaml,python3>=3.10

RUN_DEPENDS=	${BUILD_DEPENDS}

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
