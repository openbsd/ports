COMMENT=	super-fast templating language

MODPY_DISTV=	1.3.5
DISTNAME=	Mako-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME:L}
REVISION=	0

# somehow just the changelog is 0600
FIX_EXTRACT_PERMISSIONS= Yes

CATEGORIES=	www

HOMEPAGE=	https://www.makotemplates.org/

# MIT
PERMIT_PACKAGE=	Yes

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

MODULES=	lang/python

RUN_DEPENDS=	textproc/py-MarkupSafe \
		www/py-beaker

TEST_DEPENDS=	devel/py-test-cov \
		devel/py-babel

.include <bsd.port.mk>
