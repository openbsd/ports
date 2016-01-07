# $OpenBSD: Makefile,v 1.1.1.1 2016/01/07 08:20:44 ajacoutot Exp $

COMMENT=		integrated shell for working with the AWS CLI

MODPY_EGG_VERSION=	0.1.0
GH_ACCOUNT=		awslabs
GH_PROJECT=		aws-shell
GH_TAGNAME=		${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		net/py-boto3 \
			sysutils/awscli

# !!! check setup.py for exact dependencies version
RUN_DEPENDS +=		devel/py-prompt_toolkit=0.52

.include <bsd.port.mk>
