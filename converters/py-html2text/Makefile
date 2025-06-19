COMMENT=	HTML to markdown-formatted text converter

MODPY_DISTV=	2025.4.15
DISTNAME=	html2text-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}

CATEGORIES=	converters
HOMEPAGE=	http://alir3z4.github.io/html2text/

# GPLv3
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PYBUILD=	setuptools_scm
MODPY_PI=	Yes

post-install:
	mv ${PREFIX}/bin/html2text ${PREFIX}/bin/${MODPY_PY_PREFIX}html2text

.include <bsd.port.mk>
