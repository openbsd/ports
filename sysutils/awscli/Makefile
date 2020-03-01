# $OpenBSD: Makefile,v 1.433 2020/03/01 10:17:34 ajacoutot Exp $

COMMENT=		universal command line environment for AWS

MODPY_EGG_VERSION=	1.18.11
DISTNAME=		awscli-${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/cli/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		textproc/py-docutils

# !!! check setup.py for exact dependencies version
RUN_DEPENDS +=		devel/py-colorama>=0.2.5,<0.4.4
RUN_DEPENDS +=		net/py-botocore=1.15.11
RUN_DEPENDS +=		net/py-s3transfer>=0.3.0,<0.4.0
RUN_DEPENDS +=		textproc/py-yaml>=3.10,<5.3
# XXX https://github.com/aws/aws-cli/issues/3660
#RUN_DEPENDS +=		security/py-rsa>=3.1.2,<=3.5.0
RUN_DEPENDS +=		security/py-rsa

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
