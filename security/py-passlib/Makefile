COMMENT=	Python module providing a password hashing framework

MODPY_DISTV=	1.9.5
DISTNAME=	passlib-${MODPY_DISTV}
PKGNAME=	py-passlib-${MODPY_DISTV:S/.post/pl/}

CATEGORIES=	security

HOMEPAGE=	https://github.com/notypecheck/passlib

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
