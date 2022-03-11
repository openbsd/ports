# the versions in chromium and node work ok, maybe updating will fix it..
BROKEN=		needs updating for clang 13; mksnapshot segfaults

ONLY_FOR_ARCHS=	amd64 i386

GH_ACCOUNT=	v8
GH_PROJECT=	v8
GH_TAGNAME=	3.16.14.11
PKGNAME=	lib${DISTNAME}
REVISION=	4

EPOCH=		0

DPB_PROPERTIES=	parallel

COMMENT=	V8 JavaScript for clients and servers

V8_ARCH=	${MACHINE_ARCH:S/amd64/x64/:S/i386/ia32/}
V8_RELEASE=	release

CATEGORIES=	lang

SHARED_LIBS=    v8            0.0

HOMEPAGE=	https://bugs.chromium.org/p/v8/

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

SUBST_VARS+=	WRKDIR V8_ARCH

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
	ln -sf ${MODPY_BIN} ${WRKDIR}/bin/python
	${SUBST_CMD} ${WRKDIST}/tools/gyp/v8.gyp ${WRKDIST}/Makefile

do-install:
	cp -p ${WRKSRC}/include/*.h ${PREFIX}/include/
	cp -p ${WRKSRC}/out/${V8_ARCH}.${V8_RELEASE}/d8 ${PREFIX}/bin
	cp -p ${WRKSRC}/out/${V8_ARCH}.${V8_RELEASE}/lib.target/libv8.so.* \
		${PREFIX}/lib/

.include <bsd.port.mk>
