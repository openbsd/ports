# $OpenBSD: Makefile,v 1.414 2019/12/08 08:24:34 ajacoutot Exp $

# !!! do not update blindly, these ports require a specific version:
# net/py-boto3
# sysutils/awscli

COMMENT=		low-level interface to Amazon Web Services

MODPY_EGG_VERSION=	1.13.34
DISTNAME=		botocore-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/botocore

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-jmespath${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR} \
			www/py-urllib3${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR ?=

# XXX py-behave, unported yet
TEST_DEPENDS=		${BUILD_PKGPATH} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

# needs a driver and a runner
TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests/cmd-runner

.include <bsd.port.mk>
