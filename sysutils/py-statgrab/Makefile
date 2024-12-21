COMMENT=	python bindings to libstatgrab

MODPY_DISTV=	0.7.3
DISTNAME=	pystatgrab-${MODPY_DISTV}
PKGNAME=	py-statgrab-${MODPY_DISTV}
CATEGORIES=	sysutils
REVISION=	0

HOMEPAGE=	http://www.i-scream.org/pystatgrab/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	pthread statgrab ${MODPY_WANTLIB}

SITES=		http://ftp.i-scream.org/pub/i-scream/pystatgrab/ \
		http://ftp.uk.i-scream.org/pub/i-scream/pystatgrab/

MODULES=	lang/python

MODPY_PYBUILD=	setuptools
MODPY_PYTEST_ARGS=	test.py

LIB_DEPENDS=	sysutils/libstatgrab>=0.91

# distributed statgrab.c needs rebuilding with newer cython for py37
BUILD_DEPENDS=	lang/cython

post-extract:
	rm ${WRKSRC}/statgrab.c

.include <bsd.port.mk>
