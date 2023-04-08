COMMENT=	HTML/XML parser that supports invalid markup

MODPY_EGG_VERSION=	4.12.2
DISTNAME=	beautifulsoup4-${MODPY_EGG_VERSION}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://www.crummy.com/software/BeautifulSoup/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

FLAVORS=	python3
FLAVOR=		python3

MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	www/py-soupsieve${MODPY_FLAVOR}

.include <bsd.port.mk>
