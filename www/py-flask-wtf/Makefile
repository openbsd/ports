COMMENT=	simple integration of Flask and WTForms

MODPY_DISTV=1.0.1
DISTNAME=	Flask-WTF-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www
REVISION=	1

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_PYBUILD =		setuptools

RUN_DEPENDS=		www/py-flask \
			www/py-wtforms

# Could also use various unported eggs, Flask-Babel, speaklater
#TEST_DEPENDS=		devel/py-nose

USE_GMAKE=		Yes

.include <bsd.port.mk>
