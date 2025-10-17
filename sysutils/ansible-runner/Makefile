COMMENT =	interface for controlling and interacting with Ansible

MODPY_DISTV =	2.4.2

DISTNAME =	ansible_runner-${MODPY_DISTV}
PKGNAME =	${DISTNAME:S/_/-/}

MAINTAINER =	Mikolaj Kucharski <mikolaj@kucharski.name>

CATEGORIES =	sysutils

HOMEPAGE =	https://ansible-runner.readthedocs.io/

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools_scm

RUN_DEPENDS =		devel/py-pexpect \
			sysutils/ansible \
			sysutils/py-daemon

.include <bsd.port.mk>
