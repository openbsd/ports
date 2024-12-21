COMMENT=	closed caption converter

MODPY_DISTV=	2.2.15
DISTNAME=	pycaption-${MODPY_DISTV}
PKGNAME=	py-caption-${MODPY_DISTV}
REVISION=	0

CATEGORIES=	multimedia

# Apache 2.0
PERMIT_PACKAGE=	Yes

MODULES=	lang/python

MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

RUN_DEPENDS=	textproc/py-cssutils \
		textproc/py-lxml \
		www/py-beautifulsoup4

post-install:
	rm -r ${WRKINST}${MODPY_SITEPKG}/tests

.include <bsd.port.mk>
