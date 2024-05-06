COMMENT=	simple Python framework for web-based applications

MODPY_EGG_VERSION=	3.6
DISTNAME=	Quixote-${MODPY_EGG_VERSION}
PKGNAME=	py-quixote-${MODPY_EGG_VERSION}
REVISION=	1

CATEGORIES=	www

HOMEPAGE=	http://quixote.ca/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${MODPY_WANTLIB} pthread

FLAVOR=		python3
FLAVORS=	python3

MODULES=	lang/python
MODPY_PYBUILD=	setuptools
MODPY_PI=	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/py-quixote
.for i in LICENSE.txt doc/*txt
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/doc/py-quixote
.endfor

.include <bsd.port.mk>
