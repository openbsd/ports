COMMENT=	super-fast templating language

# doc/build/changelog.rst (probably generated with a tight umask)
FIX_EXTRACT_PERMISSIONS= Yes

MODPY_DISTV=	1.3.9
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
