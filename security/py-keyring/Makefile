COMMENT=		store and access your passwords safely

# newer versions require jaraco.classes
MODPY_DISTV=	23.8.2
DISTNAME=		keyring-${MODPY_DISTV}
PKGNAME=		py-${DISTNAME}
REVISION=		0

CATEGORIES=		security

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_ADJ_FILES=	keyring/cli.py
MODPY_PI=		Yes
MODPY_PYBUILD=		setuptools_scm

RUN_DEPENDS=		security/py-secretstorage

# KWallet backend
RUN_DEPENDS+=		x11/dbus-python

MODPY_PYTEST_ARGS=	tests

# Cannot autolaunch D-Bus without X11 $DISPLAY
TEST_IS_INTERACTIVE=	x11

.include <bsd.port.mk>
