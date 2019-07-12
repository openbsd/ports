# $OpenBSD: Makefile,v 1.20 2019/07/12 20:49:49 sthen Exp $

COMMENT=	manage Elasticsearch indices

MODPY_EGG_VERSION=5.6.0
DISTNAME=	elasticsearch-curator-${MODPY_EGG_VERSION}
PKGNAME=	${MODPY_PY_PREFIX}elasticsearch-curator-${MODPY_EGG_VERSION}
REVISION=	0

CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/elastic/curator

MAINTAINER=	Pavel Korovin <pvk@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI =	Yes
MODPY_SETUPTOOLS= Yes

MODPY_VERSION=	${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS=	devel/py-certifi,python3>=2018.10.15 \
		devel/py-click,python3>=6.7,<7.0.0 \
		devel/py-six,python3>=1.11.0 \
		devel/py-voluptuous,python3>=0.9.3 \
		net/py-boto3,python3>=1.7.24 \
		security/py-requests-aws4auth,python3>=0.9 \
		textproc/py-elasticsearch,python3>=6.1.0,<7.0.0 \
		textproc/py-yaml,python3>=3.10

BUILD_DEPENDS=	${RUN_DEPENDS}

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
