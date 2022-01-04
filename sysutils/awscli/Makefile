# $OpenBSD: Makefile,v 1.597 2022/01/04 08:00:22 ajacoutot Exp $

COMMENT=		universal command line environment for AWS

MODPY_EGG_VERSION=	1.22.27
DISTNAME=		awscli-${MODPY_EGG_VERSION}

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/cli/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes

RUN_DEPENDS=		textproc/py-docutils${MODPY_FLAVOR}

# !!! check setup.py for exact dependencies version
#RUN_DEPENDS +=		devel/py-colorama${MODPY_FLAVOR}>=0.2.5,<0.4.4
RUN_DEPENDS +=		devel/py-colorama${MODPY_FLAVOR}
RUN_DEPENDS +=		net/py-botocore${MODPY_FLAVOR}=1.23.27
RUN_DEPENDS +=		net/py-s3transfer${MODPY_FLAVOR}>=0.5.0,<0.6.0
RUN_DEPENDS +=		textproc/py-yaml${MODPY_FLAVOR}>=3.10,<5.5
RUN_DEPENDS +=		security/py-rsa${MODPY_FLAVOR}>=3.1.2,<4.8

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
