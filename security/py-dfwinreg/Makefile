COMMENT =	Digital Forensics Windows Registry (dfWinReg)

MODPY_DISTV =	20200415
DISTNAME =	dfwinreg-${MODPY_DISTV}
PKGNAME =	py-${DISTNAME}
REVISION =	4

CATEGORIES =	security

HOMEPAGE =	https://github.com/log2timeline/dfwinreg/wiki

SITES =		https://github.com/log2timeline/dfwinreg/releases/download/${MODPY_DISTV}/

MAINTAINER =	Remi Pointel <rpointel@openbsd.org>

# Apachev2
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

MODPY_PYBUILD =	setuptools
RUN_DEPENDS =		devel/py-construct \
			devel/py-dtfabric \
			devel/py-six \
			security/py-dfdatetime \
			sysutils/libregf
TEST_DEPENDS =		devel/py-test \
			devel/py-mock

do-test:
	touch ${WRKSRC}/utils/__init__.py
	cd ${WRKSRC} && ${MODPY_BIN} run_tests.py

.include <bsd.port.mk>
