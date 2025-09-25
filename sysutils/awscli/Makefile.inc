DISTNAME=		awscli-${MODPY_DISTV}

CATEGORIES=		sysutils

HOMEPAGE=		https://aws.amazon.com/cli/

# Apache 2.0
PERMIT_PACKAGE=		Yes

MODULES=		lang/python

RUN_DEPENDS +=		textproc/py-docutils

NO_TEST=		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	mv ${PREFIX}/bin/aws_bash_completer \
		${PREFIX}/share/bash-completion/completions/awscli
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awscli
	mv ${PREFIX}/bin/aws_zsh_completer.sh \
		${PREFIX}/share/examples/awscli
	rm ${PREFIX}/bin/aws.cmd
