COMMENT=	super-fast templating language

MODPY_DISTV=	1.3.8
DISTNAME=	mako-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://www.makotemplates.org/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-MarkupSafe \
		www/py-beaker

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-babel

.include <bsd.port.mk>
