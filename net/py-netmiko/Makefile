COMMENT =		simplify Paramiko connections to network devices

MODPY_DISTV =	3.1.1
DISTNAME=		netmiko-${MODPY_DISTV}
PKGNAME =		py-${DISTNAME}
REVISION =		5

CATEGORIES =		net

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-serial \
			security/py-paramiko \
			security/py-scp \
			textproc/py-textfsm \
			textproc/py-yaml

.include <bsd.port.mk>
