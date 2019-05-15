# $OpenBSD: Makefile,v 1.8 2019/05/15 12:04:41 kmos Exp $

PORTROACH=		skipv:reinvent-demo

COMMENT=		integrated shell for working with the AWS CLI

MODPY_EGG_VERSION=	0.2.1
GH_ACCOUNT=		awslabs
GH_PROJECT=		aws-shell
GH_TAGNAME=		${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		devel/py-configobj \
			net/py-boto3 \
			sysutils/awscli \
			textproc/py-pygments

# !!! check setup.py for exact dependencies version
RUN_DEPENDS +=		devel/py-prompt_toolkit>=1.0.0,<1.1.0

TEST_DEPENDS +=		devel/py-unittest2 \
			devel/py-tox \
			devel/py-test \
			devel/py-test-cov \
			devel/py-mock

# needed for test
PORTHOME=		${WRKDIST}

.include <bsd.port.mk>
