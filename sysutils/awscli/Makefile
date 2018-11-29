# $OpenBSD: Makefile,v 1.344 2018/11/29 14:32:31 ajacoutot Exp $

COMMENT=		universal command line environment for AWS

MODPY_EGG_VERSION=	1.16.65
DISTNAME=		awscli-${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/cli/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		textproc/py-docutils \
			textproc/py-yaml

# !!! check setup.py for exact dependencies version
RUN_DEPENDS +=		devel/py-colorama=0.3.7
RUN_DEPENDS +=		net/py-botocore=1.12.55
RUN_DEPENDS +=		net/py-s3transfer=0.1.13
RUN_DEPENDS +=		security/py-rsa<4

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	mv ${PREFIX}/bin/aws_bash_completer \
		${PREFIX}/share/bash-completion/completions/awscli
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awscli
	mv ${PREFIX}/bin/aws_zsh_completer.sh \
		${PREFIX}/share/examples/awscli
	rm ${PREFIX}/bin/aws.cmd

.include <bsd.port.mk>
