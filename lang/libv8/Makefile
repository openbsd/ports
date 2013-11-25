# $OpenBSD: Makefile,v 1.5 2013/11/25 14:16:23 sthen Exp $

ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	V8 JavaScript for clients and servers

V8_VERSION=	3.12.19
V8_ARCH= ${PKG_ARCH:S/amd64/x64/:S/i386/ia32/}
V8_RELEASE= release

REVISION=0
EPOCH=0

DISTNAME=	v8-${V8_VERSION}
PKGNAME= lib${DISTNAME}

CATEGORIES=	lang

SHARED_LIBS=    v8            0.0

HOMEPAGE=	https://code.google.com/p/v8/

MAINTAINER=	Aaron Bieber <abieber@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://deftly.net/

BUILD_DEPENDS= devel/gyp

LIB_DEPENDS=  devel/libexecinfo

WANTLIB +=	c execinfo m pthread ssl stdc++ 

USE_GMAKE=	Yes

CONFIGURE_STYLE= python.port.mk
MODULES=	lang/python

SUBST_VARS+= 	WRKDIR
SUBST_VARS+= 	V8_ARCH

MAKE_FLAGS+= library=shared ARCHES=${V8_ARCH} MODES=${V8_RELEASE} \
						 DEFAULT_ARCHES=${V8_ARCH}

MAKE_ENV+=	V=1 CXX=c++ CCFLAGS+="${CFLAGS}" \
						CXXFLAGS="${CXXFLAGS} -I${WRKSRC}/src -I${LOCALBASE}/include" \
						PATH=${WRKSRC}/bin:${PATH}

NO_CCACHE=	Yes

TEST_TARGET= check

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
