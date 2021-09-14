# $OpenBSD: Makefile,v 1.2 2021/09/14 10:51:53 inoguchi Exp $

COMMENT-main =		C++ library for MARISA matching algorithm
COMMENT-python =	marisa-trie bindings for Python (SWIG)

V =			0.2.6
PKGNAME-main =		libmarisa-${V}
PKGNAME-python =	py3-libmarisa-${V}

REVISION-main =		0

GH_ACCOUNT =	s-yata
GH_PROJECT =	marisa-trie
GH_TAGNAME =	v${V}

SHARED_LIBS +=	marisa			0.0 # 0.0

CATEGORIES =	textproc

MAINTAINER =	Yifei Zhan <openbsd@zhan.science>

# dual license: either BSD 2-clause or LGPLv2.1+
PERMIT_PACKAGE =	Yes

PSEUDO_FLAVORS =	no_python
FLAVOR? =

MULTI_PACKAGES =	-main -python

WANTLIB-main += ${COMPILER_LIBCXX} c m

.include <bsd.port.arch.mk>

.if ${BUILD_PACKAGES:M-python}
BUILD_DEPENDS +=	devel/swig
MODULES +=		lang/python
LIB_DEPENDS-python =	${BUILD_PKGPATH},-main=${V} ${MODPY_LIB_DEPENDS}
WANTLIB-python =	${COMPILER_LIBCXX} ${MODPY_WANTLIB} m marisa
.endif

AUTOCONF_VERSION =	2.69
AUTOMAKE_VERSION =	1.15
CONFIGURE_STYLE =	autoreconf
CONFIGURE_ARGS =	CXX="${CXX}" CXXFLAGS="${CXXFLAGS}"

.if ${MACHINE_ARCH} == "amd64"
CONFIGURE_ARGS +=	--enable-sse2
.endif

post-build:
.if ${BUILD_PACKAGES:M-python}
	cd ${WRKDIST}/bindings && make swig-python
	cd ${WRKDIST}/bindings/python && \
	    ${MODPY_BIN} setup.py build_ext \
	    --include-dirs=${WRKSRC}/include/ \
	    --library-dirs=${WRKSRC}/lib/marisa/.libs
.endif

post-install:
.if ${BUILD_PACKAGES:M-python}
	cd ${WRKDIST}/bindings/python && \
	    ${MODPY_BIN} setup.py ${MODPY_DISTUTILS_INSTALL}
.endif

.include <bsd.port.mk>
