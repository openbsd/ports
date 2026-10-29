COMMENT=	travel through time in your tests

MODPY_DISTV=	3.6.0
GH_ACCOUNT=	adamchainz
GH_PROJECT=	time-machine
GH_TAGNAME=	${MODPY_DISTV}
PKGNAME=	py-time-machine-${MODPY_DISTV}

CATEGORIES=	devel

# https://github.com/adamchainz/time-machine
HOMEPAGE=	https://time-machine.readthedocs.io/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools

TEST_DEPENDS=	devel/py-freezegun \
		devel/py-hypothesis \
		devel/py-tokenize-rt

.include <bsd.port.mk>
