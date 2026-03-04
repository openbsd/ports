COMMENT =	wrapper around proxmox API

MODPY_DISTV =	2.3.0
GH_ACCOUNT =	proxmoxer
GH_PROJECT =	proxmoxer
GH_TAGNAME =	${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}

CATEGORIES =	sysutils

# https://github.com/proxmoxer/proxmoxer/blob/develop/CHANGELOG.md
HOMEPAGE =	https://proxmoxer.github.io/docs/latest/

# MIT
PERMIT_PACKAGE=	Yes

MODULES =	lang/python
MODPY_PYBUILD =	setuptools

RUN_DEPENDS =	www/py-requests \
		security/py-paramiko

TEST_DEPENDS =	www/py-requests-toolbelt \
		www/py-responses

# needs openssh-wrapper
MODPY_PYTEST_ARGS = --ignore tests/test_openssh.py

.include <bsd.port.mk>
