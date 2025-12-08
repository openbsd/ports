COMMENT=	HTML cleaner from the lxml project

MODPY_DISTV=	0.4.3
DISTNAME=	lxml_html_clean-${MODPY_DISTV}
PKGNAME=	py-lxml-html-clean-${MODPY_DISTV}

CATEGORIES=	textproc devel

HOMEPAGE=	https://lxml.de/

# BSD
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

RUN_DEPENDS=	textproc/py-lxml \
		www/py-urllib3

.include <bsd.port.mk>
