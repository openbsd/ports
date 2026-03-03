COMMENT=	bcrypt hashing for flask

MODPY_DISTV=	1.0.1
DISTNAME=	Flask-Bcrypt-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www

# BSD
PERMIT_PACKAGE= Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-flask \
		security/py-bcrypt
NO_TEST=	Yes

.include <bsd.port.mk>
