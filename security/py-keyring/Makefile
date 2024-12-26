COMMENT=	store and access your passwords safely

MODPY_DISTV=	25.6.0
DISTNAME=	keyring-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_ADJ_FILES=keyring/cli.py
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools_scm

RUN_DEPENDS=	devel/py-jaraco-classes \
		devel/py-jaraco-context \
		devel/py-jaraco-functools \
		devel/py-jeepney \
		security/py-secretstorage

# KWallet backend
RUN_DEPENDS+=	x11/dbus-python

#MODPY_PYTEST_ARGS=	tests

# Cannot autolaunch D-Bus without X11 $DISPLAY
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
