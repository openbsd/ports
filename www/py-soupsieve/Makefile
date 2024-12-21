COMMENT=	modern CSS selector implementation for Beautiful Soup

MODPY_DISTV=	2.6
DISTNAME=	soupsieve-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
REVISION=	0

EPOCH=		0

CATEGORIES=	www

HOMEPAGE=	https://github.com/facelessuser/soupsieve

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	hatchling

TEST_DEPENDS=	devel/py-coverage \
		devel/py-html5lib \
		devel/py-test-cov \
		textproc/py-lxml \
		www/py-beautifulsoup4

.include <bsd.port.mk>
