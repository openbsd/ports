COMMENT-main=	portable low-level networking library
COMMENT-python=	python interface to libdnet

MODPY_EGG_VERSION= 1.16.4
GH_ACCOUNT=	ofalk
GH_PROJECT=	libdnet
# 1.16.4 release with my merged PRs on top
GH_COMMIT=	8a0163b38fefdf6184f41645548cfbe306a254b5
DISTNAME=	libdnet-1.16.4
PKGNAME-main=	${DISTNAME}
PKGNAME-python=	${MODPY_PY_PREFIX}${DISTNAME}
REVISION-main=	0
REVISION-python=0

SHARED_LIBS=	dnet	1.1

CATEGORIES=	net

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c

PSEUDO_FLAVORS=		no_python
FLAVOR?=

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config
MULTI_PACKAGES=		-main -python

# override python.port.mk's RUN_DEPENDS
RUN_DEPENDS-main=

CONFIGURE_ARGS +=	--without-check

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-python}
MODULES+=		lang/python
MODPY_ADJ_FILES=	python/test.py
CONFIGURE_ARGS+=	--with-python
BUILD_DEPENDS+=		devel/py-setuptools${MODPY_FLAVOR} \
			lang/cython${MODPY_FLAVOR}
MAKE_FLAGS=		PYTHON=${MODPY_BIN}
TEST_DEPENDS=		${FULLPKGNAME-python}:${FULLPKGPATH-python} \
			net/py-netifaces${MODPY_FLAVOR}
TEST_FLAGS=		TESTS_ENVIRONMENT=${MODPY_BIN}
TEST_IS_INTERACTIVE=	needs root
WANTLIB-python=		${MODPY_WANTLIB} m pthread util
.else
CONFIGURE_ARGS+=	--without-python
.endif

.include <bsd.port.mk>
