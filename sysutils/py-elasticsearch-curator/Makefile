# $OpenBSD: Makefile,v 1.21 2019/07/28 07:33:03 ajacoutot Exp $

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

RUN_DEPENDS=	devel/py-certifi${MODPY_FLAVOR}>=2018.10.15 \
		devel/py-click${MODPY_FLAVOR}>=6.7,<7.0.0 \
		devel/py-six${MODPY_FLAVOR}>=1.11.0 \
		devel/py-voluptuous${MODPY_FLAVOR}>=0.9.3 \
		net/py-boto3${MODPY_FLAVOR}>=1.7.24 \
		security/py-requests-aws4auth${MODPY_FLAVOR}>=0.9 \
		textproc/py-elasticsearch${MODPY_FLAVOR}>=6.1.0,<7.0.0 \
		textproc/py-yaml${MODPY_FLAVOR}>=3.10

BUILD_DEPENDS=	${RUN_DEPENDS}

# Requires unported nosexcover
NO_TEST=	Yes

.include <bsd.port.mk>
