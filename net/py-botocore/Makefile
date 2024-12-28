# !!! do not update blindly, these ports require a specific version:
# net/py-boto3
# sysutils/awscli

COMMENT=		low-level interface to Amazon Web Services

MODPY_DISTV=		1.35.90
DISTNAME=		botocore-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}

CATEGORIES=		net devel

HOMEPAGE=		https://github.com/boto/botocore

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		devel/py-dateutil \
			devel/py-jmespath \
			textproc/py-docutils \
			www/py-urllib3

# XXX py-behave, unported yet
TEST_DEPENDS=		${BUILD_PKGPATH} \
			devel/py-mock \
			devel/py-nose

# needs a driver and a runner
TEST_IS_INTERACTIVE=	Yes

do-test:
	cd ${WRKSRC} && ${MODPY_BIN} ./tests/cmd-runner

.include <bsd.port.mk>
