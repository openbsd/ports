COMMENT=	Python module providing a password hashing framework

MODPY_DISTV=	1.7.4
DISTNAME=	passlib-${MODPY_DISTV}
PKGNAME=	py-passlib-${MODPY_DISTV}
REVISION=	5

CATEGORIES=	security

HOMEPAGE=	https://bitbucket.org/ecollins/passlib/wiki/Home

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	devel/py-setuptools \
		security/py-bcrypt \
		security/py-scrypt
TEST_DEPENDS=	${RUN_DEPENDS} \
		devel/py-mock \
		www/apache-httpd

pre-test:
	ln -fs ${LOCALBASE}/bin/htpasswd2 ${WRKDIR}/bin/htpasswd

.include <bsd.port.mk>
