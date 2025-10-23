COMMENT=	Python module providing a password hashing framework

MODPY_DISTV=	1.9.3
DISTNAME=	libpass-${MODPY_DISTV}
# libpass is a maintained fork of passlib, providing the same namespace
PKGNAME=	py-passlib-${MODPY_DISTV}

CATEGORIES=	security

HOMEPAGE=	https://github.com/ThirVondukr/passlib

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling
# wants pytest-archon
MODPY_PYTEST_ARGS= --ignore tests/libpass/test_arch.py

RUN_DEPENDS=	security/py-argon2-cffi \
		security/py-bcrypt \
		security/py-scrypt
TEST_DEPENDS=	${RUN_DEPENDS} \
		devel/py-coverage \
		devel/py-test-xdist \
		devel/py-typeguard \
		www/apache-httpd

pre-test:
	ln -fs ${LOCALBASE}/bin/htpasswd2 ${WRKDIR}/bin/htpasswd

.include <bsd.port.mk>
