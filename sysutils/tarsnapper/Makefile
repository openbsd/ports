COMMENT =		tarsnap wrapper which automatically expires backups

MODPY_DISTV =	0.4.0
DISTNAME =		tarsnapper-${MODPY_DISTV}
REVISION =		9

CATEGORIES =		sysutils

# BSD
PERMIT_PACKAGE =	Yes

MODULES =		lang/python

MODPY_PI =		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS =		devel/py-dateutil \
			devel/py-pexpect \
			textproc/py-yaml \
			sysutils/tarsnap
TEST_DEPENDS =	 	devel/py-nose

.include <bsd.port.mk>
