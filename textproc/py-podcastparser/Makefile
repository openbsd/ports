COMMENT=	simple, fast and efficient podcast parser

MODPY_DISTV=	0.6.10
DISTNAME=	podcastparser-${MODPY_DISTV}
PKGNAME=	py-${DISTNAME}
CATEGORIES=	textproc
REVISION=	2

MAINTAINER=	Tim Meunier <trondd@kagu-tsuchi.com>

# ISC
PERMIT_PACKAGE=	Yes

MODULES=	lang/python
MODPY_PI=	Yes
MODPY_PYBUILD=	setuptools

BUILD_DEPENDS=	textproc/py-sphinx

TEST_DEPENDS=	devel/py-coverage \
		devel/py-test-cov

MAKE_FILE=	makefile
MAKE_ENV=	PYTHON=${MODPY_BIN}

post-build:
	cd ${WRKSRC}/doc && ${MAKE_ENV} ${MAKE_PROGRAM} man \
		SPHINXBUILD=sphinx-build

post-install:
	${INSTALL_DATA} ${WRKSRC}/doc/_build/man/podcastparser.1 \
		${PREFIX}/man/man1/podcastparser.1

.include <bsd.port.mk>
