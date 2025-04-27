COMMENT =	wrapper around proxmox API

MODPY_DISTV =	2.2.0

DISTNAME =	proxmoxer-${MODPY_DISTV}
PKGNAME =	py-proxmoxer-${MODPY_DISTV}
CATEGORIES =	sysutils

HOMEPAGE =	https://proxmoxer.github.io/docs/latest/
# MIT
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools
MODPY_PI =	Yes

# openssh-wrapper missing
RUN_DEPENDS =	www/py-requests \
		security/py-paramiko

# pypi tarball doesnt ship api_mock.py
TEST_DEPENDS =	${RUN_DEPENDS} \
		www/py-requests-toolbelt \
		www/py-responses

.include <bsd.port.mk>
