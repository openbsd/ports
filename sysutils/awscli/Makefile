COMMENT=		universal command line environment for AWS

MODPY_DISTV=		1.37.16
DISTNAME=		awscli-${MODPY_DISTV}

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/cli/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools

RUN_DEPENDS=		textproc/py-docutils

# !!! check setup.py for exact dependencies version
RUN_DEPENDS +=		devel/py-colorama>=0.2.5,<0.4.7
RUN_DEPENDS +=		net/py-botocore=1.36.${MODPY_DISTV:E}
RUN_DEPENDS +=		net/py-s3transfer>=0.11.0,<0.12.0
RUN_DEPENDS +=		textproc/py-yaml>=3.10,<6.1
RUN_DEPENDS +=		security/py-rsa>=3.1.2,<4.8

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
