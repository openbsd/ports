COMMENT=	HTML/XML parser that supports invalid markup

MODPY_DISTV=	4.13.4
DISTNAME=	beautifulsoup4-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	www

HOMEPAGE=	https://www.crummy.com/software/BeautifulSoup/

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	hatchling
MODPY_PI=	Yes

RUN_DEPENDS=	devel/py-typing-extensions \
		www/py-soupsieve

.include <bsd.port.mk>
