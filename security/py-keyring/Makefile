COMMENT=	store and access your passwords safely

MODPY_DISTV=	25.7.0
DISTNAME=	keyring-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	security

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

BUILD_DEPENDS=	misc/py-coherent.licensed
RUN_DEPENDS=	devel/py-jaraco-classes \
		devel/py-jaraco-context \
		devel/py-jaraco-functools \
		devel/py-jeepney \
		security/py-secretstorage

# KWallet backend
RUN_DEPENDS +=	x11/dbus-python

.include <bsd.port.mk>
