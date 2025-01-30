COMMENT=	interact with keepass databases from Python

MODPY_DISTV=	4.1.0.post1
DISTNAME=	pykeepass-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:S/.post/pl/}
CATEGORIES=	security

GH_ACCOUNT=	libkeepass
GH_PROJECT=	pykeepass
GH_TAGNAME=	v${MODPY_DISTV}

HOMEPAGE=	https://github.com/libkeepass/pykeepass

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

# tests are not in the pypi sdist
#MODPY_PI=	Yes
MODPY_PYTEST_ARGS= tests/tests.py

RUN_DEPENDS=	devel/py-construct \
		devel/py-dateutil \
		security/py-argon2-cffi \
		security/py-cryptodomex \
		textproc/py-lxml
TEST_DEPENDS=	security/py-pyotp

.include <bsd.port.mk>
