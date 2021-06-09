# $OpenBSD: Makefile,v 1.23 2021/06/09 19:50:08 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386

GH_ACCOUNT=	v8
GH_PROJECT=	v8
GH_TAGNAME=	3.16.14.11

DPB_PROPERTIES=	parallel

COMMENT=	V8 JavaScript for clients and servers

V8_VERSION=	3.16.14.11
EPOCH=		0
REVISION=	3
V8_ARCH=	${MACHINE_ARCH:S/amd64/x64/:S/i386/ia32/}
V8_RELEASE=	release

PKGNAME=	lib${DISTNAME}

CATEGORIES=	lang

SHARED_LIBS=    v8            0.0

HOMEPAGE=	https://bugs.chromium.org/p/v8/

MAINTAINER=	David Carlier <devnexen@gmail.com>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB +=	c execinfo m pthread ssl ${COMPILER_LIBCXX} 

BUILD_DEPENDS=	devel/gyp

COMPILER=	base-clang ports-gcc
DEBUG_PACKAGES=	${BUILD_PACKAGES}

USE_GMAKE=	Yes

CONFIGURE_STYLE= none
MODULES=	lang/python
MODPY_RUNDEP=	No

USE_WXNEEDED=	Yes

SUBST_VARS+= 	WRKDIR
SUBST_VARS+= 	V8_ARCH

MAKE_FLAGS+=	library=shared ARCHES=${V8_ARCH} MODES=${V8_RELEASE} \
		DEFAULT_ARCHES=${V8_ARCH}

MAKE_ENV+=	V=1 \
		CXX="${CXX}" \
		CXX_host="${CXX}" \
		CXX_target="${CXX}" \
		LINK="${CXX} ${LDFLAGS}" \
		CCFLAGS+="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS} -I${WRKSRC}/src -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib" \
		PATH=${WRKSRC}/bin:${PATH}

TEST_TARGET=	check

pre-configure:
	@# Bad practice, but prevents a whole stack of patches.
	ln -sf ${LOCALBASE}/bin/python${MODPY_VERSION} ${WRKDIR}/bin/python 
	${SUBST_CMD} ${WRKDIST}/tools/gyp/v8.gyp ${WRKDIST}/Makefile

do-install:
	cp -p ${WRKSRC}/include/*.h ${PREFIX}/include/
	cp -p ${WRKSRC}/out/${V8_ARCH}.${V8_RELEASE}/d8 ${PREFIX}/bin
	cp -p ${WRKSRC}/out/${V8_ARCH}.${V8_RELEASE}/lib.target/libv8.so.* \
		${PREFIX}/lib/

.include <bsd.port.mk>
