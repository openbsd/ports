COMMENT=	simple integration of Flask and WTForms

MODPY_EGG_VERSION=1.0.0
DISTNAME=	Flask-WTF-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME:L}
CATEGORIES=	www

# BSD
PERMIT_PACKAGE=	Yes

MODULES=		lang/python

MODPY_PI=		Yes
MODPY_SETUPTOOLS=	Yes
MODPY_PYTEST=		Yes
FLAVORS=		python3
FLAVOR=			python3

RUN_DEPENDS=		www/py-flask${MODPY_FLAVOR} \
			www/py-wtforms${MODPY_FLAVOR}

# Could also use various unported eggs, Flask-Babel, speaklater
#TEST_DEPENDS=		devel/py-nose

USE_GMAKE=		Yes

.include <bsd.port.mk>
