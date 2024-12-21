COMMENT=	simple Python framework for web-based applications

MODPY_DISTV=	3.6
DISTNAME=	Quixote-${MODPY_DISTV}
PKGNAME=	py-quixote-${MODPY_DISTV}
REVISION=	2

CATEGORIES=	www

HOMEPAGE=	http://quixote.ca/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-quixote
.for i in LICENSE.txt doc/*txt
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/py-quixote
.endfor

.include <bsd.port.mk>
