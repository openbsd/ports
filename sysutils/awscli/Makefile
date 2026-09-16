COMMENT =		universal command line environment for AWS

MODPY_DISTV =		2.34.29
GH_ACCOUNT =		aws
GH_PROJECT =		aws-cli
GH_TAGNAME =		${MODPY_DISTV}
DISTNAME =		awscli-${MODPY_DISTV}

REVISION =		0

CATEGORIES =		sysutils

HOMEPAGE =		https://aws.amazon.com/cli/

MAINTAINER =		Joel Knight <knight.joel@gmail.com>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
MODPY_PYBUILD =		flit_core

BUILD_DEPENDS=		devel/py-awscrt>=0.31.2 \
			devel/py-colorama \
			devel/py-dateutil \
			textproc/py-docutils \
			sysutils/py-distro \
			devel/py-jmespath \
			devel/py-prompt_toolkit \
			textproc/py-ruamel.yaml \
			textproc/py-ruamel.yaml.clib \
			www/py-urllib3

RUN_DEPENDS=		devel/py-awscrt>=0.31.2 \
			devel/py-colorama \
			devel/py-dateutil \
			devel/py-jmespath \
			devel/py-prompt_toolkit \
			devel/py-zipp \
			security/py-cryptography \
			sysutils/py-distro \
			textproc/py-docutils \
			textproc/py-ruamel.yaml \
			textproc/py-ruamel.yaml.clib \
			www/py-urllib3

NO_TEST =		Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/bash-completion/completions
	mv ${PREFIX}/bin/aws_bash_completer \
		${PREFIX}/share/bash-completion/completions/awscli
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/awscli
	mv ${PREFIX}/bin/aws_zsh_completer.sh \
		${PREFIX}/share/examples/awscli
	rm ${PREFIX}/bin/aws.cmd

.include <bsd.port.mk>
