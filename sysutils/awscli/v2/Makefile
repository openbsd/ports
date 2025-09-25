COMMENT =		universal command line environment v2 for AWS

MODPY_DISTV =		2.28.4

GH_ACCOUNT =		aws
GH_PROJECT =		aws-cli
GH_TAGNAME =		${MODPY_DISTV}

MAINTAINER =		Joel Knight <knight.joel@gmail.com>

MODPY_PYBUILD =		flit_core

RUN_DEPENDS +=		devel/py-awscrt>=0.27.5 \
			devel/py-colorama \
			devel/py-dateutil \
			devel/py-jmespath \
			devel/py-prompt_toolkit \
			devel/py-zipp \
			security/py-cryptography \
			sysutils/py-distro \
			textproc/py-ruamel.yaml \
			textproc/py-ruamel.yaml.clib \
			www/py-urllib3

BUILD_DEPENDS =		devel/py-awscrt>=0.27.5 \
			devel/py-colorama \
			devel/py-dateutil \
			devel/py-jmespath \
			devel/py-prompt_toolkit \
			textproc/py-ruamel.yaml \
			textproc/py-ruamel.yaml.clib \
			www/py-urllib3

.include <bsd.port.mk>
