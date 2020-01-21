# $OpenBSD: Makefile,v 1.17 2020/01/21 10:22:24 sthen Exp $

COMMENT =	high-level API and CLI on top of OGR

MODPY_EGG_VERSION =	1.8.11
DISTNAME =	Fiona-${MODPY_EGG_VERSION:S/post/pl/}
PKGNAME =	${MODPY_PY_PREFIX}${DISTNAME:L}
REVISION =	1

CATEGORIES =	geo

HOMEPAGE =	https://fiona.readthedocs.io

# BSD
PERMIT_PACKAGE =	Yes

MODULES =	lang/python

FLAVORS =		python3
FLAVOR ?=

COMPILER =	base-clang ports-gcc

MODPY_SETUPTOOLS =	Yes
MODPY_PI =		Yes
MODPY_PYTEST =		Yes
MODPY_PYTEST_ARGS =	tests

BUILD_DEPENDS +=${RUN_DEPENDS} \
		math/py-numpy${MODPY_FLAVOR} \
		lang/cython${MODPY_FLAVOR}

LIB_DEPENDS =	geo/gdal

RUN_DEPENDS =	geo/py-cligj${MODPY_FLAVOR} \
		devel/py-click${MODPY_FLAVOR} \
		devel/py-click-plugins${MODPY_FLAVOR} \
		devel/py-munch${MODPY_FLAVOR} \
		devel/py-six${MODPY_FLAVOR}

TEST_DEPENDS =	devel/py-nose${MODPY_FLAVOR} \
		net/py-boto3${MODPY_FLAVOR}

WANTLIB += ${COMPILER_LIBCXX} gdal m ${MODPY_WANTLIB}

.if !${FLAVOR:Mpython3}
RUN_DEPENDS +=	devel/py-enum34
TEST_DEPENDS +=	devel/py-mock
.endif

# @conflict markers only for py2 flavour
SUBST_VARS += MODPY_2ONLY
.if ${FLAVOR} == python3
MODPY_2ONLY = "@comment "
.else
MODPY_2ONLY =
.endif

TESTLIBDIR =	${WRKSRC}/lib.openbsd-${OSREV}-${ARCH}-${MODPY_VERSION}

post-install:
	mv ${PREFIX}/bin/fio{,${MODPY_BIN_SUFFIX}}

pre-test:
	cp ${TESTLIBDIR}/fiona/*.so ${WRKSRC}/fiona/

.include <bsd.port.mk>
