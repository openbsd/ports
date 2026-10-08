COMMENT=	ORM (Object Relational Manager) for Python

MODPY_DISTV=	3.13.1
DISTNAME=	sqlobject-${MODPY_DISTV}
PKGNAME=	py-sqlobject-${MODPY_DISTV}
CATEGORIES=	databases

HOMEPAGE=	https://www.sqlobject.org/

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-formencode>=1.3.1 \
		devel/py-dispatcher>=2.0.4 \
		devel/py-setuptools

.include <bsd.port.mk>
