COMMENT-main=	portable low-level networking library
COMMENT-python=	python interface to libdnet

MODPY_DISTV=	1.18.0
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

CONFIGURE_ARGS=		--without-check \
			--with-python

MAKE_FLAGS=		PYTHON=${MODPY_BIN}

MODULES=		lang/python
MODPY_ADJ_FILES=	python/test.py
RUN_DEPENDS-main=

BUILD_DEPENDS=		devel/py-setuptools \
			lang/cython

# tries to pass a binary to the shell in python tests??
NO_TEST=		Yes
#TEST_DEPENDS=		${FULLPKGNAME-python}:${FULLPKGPATH-python} \
#			net/py-netifaces
#TEST_FLAGS=		TESTS_ENVIRONMENT=${MODPY_BIN}
#TEST_IS_INTERACTIVE=	needs root

.include <bsd.port.mk>
