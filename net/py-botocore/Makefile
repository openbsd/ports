# $OpenBSD: Makefile,v 1.25 2016/04/27 09:00:11 ajacoutot Exp $

COMMENT=		low-level interface to Amazon Web Services

MODPY_EGG_VERSION=	1.4.14
DISTNAME=		botocore-${MODPY_EGG_VERSION}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/botocore

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-dateutil${MODPY_FLAVOR} \
			devel/py-jmespath${MODPY_FLAVOR} \
			textproc/py-docutils${MODPY_FLAVOR}

FLAVORS=		python3
FLAVOR ?=

# XXX py-behave, unported yet
TEST_DEPENDS=		${RUN_DEPENDS} \
			${BUILD_PKGPATH} \
			devel/py-mock${MODPY_FLAVOR} \
			devel/py-nose${MODPY_FLAVOR}

# needs a driver and a runner
TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests/cmd-runner

.include <bsd.port.mk>
