COMMENT-main=	portable low-level networking library
COMMENT-python=	python interface to libdnet

MODPY_DISTV=	1.18.2
GH_ACCOUNT=	ofalk
GH_PROJECT=	libdnet
GH_TAGNAME=	libdnet-${MODPY_DISTV}
DISTNAME=	libdnet-${MODPY_DISTV}
PKGNAME-python=	py-${DISTNAME}

SHARED_LIBS=	dnet	1.1

CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c

MULTI_PACKAGES=		-main -python
DEBUG_PACKAGES=		${BUILD_PACKAGES}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

CONFIGURE_ARGS=		--with-python

MAKE_FLAGS=		PYTHON=${MODPY_BIN}

MODULES=		lang/python
MODPY_PYBUILD=		setuptools
BUILD_DEPENDS=		lang/cython

MODPY_RUNDEP=		No
RUN_DEPENDS-python=	${MODPY_RUN_DEPENDS}

MODPY_PYTEST=		No
# avoid recursing into python tests which are py2-only
TEST_TARGET=		-C test check
TEST_IS_INTERACTIVE=	needs root

MODPY_BUILD_DIR =       ${WRKSRC}/python
post-build:
	${MODPY_BUILD_TARGET}
post-install:
	${MODPY_INSTALL_TARGET}

.include <bsd.port.mk>
