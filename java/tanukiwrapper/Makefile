COMMENT=	Tanuki Java Service Wrapper

V=		3.6.3
DISTNAME=	wrapper_${V}_src
PKGNAME=	java-tanukiwrapper-${V}
CATEGORIES=	java

HOMEPAGE=	https://wrapper.tanukisoftware.com/

SITES=		https://download.tanukisoftware.com/wrapper/${V}/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	java
MODJAVA_VER=	11
MODJAVA_BUILD=	ant

# The application which uses this defines what jdk it will run with
MODJAVA_RUN_DEPENDS=

.if ${MACHINE_ARCH} == "i386"
BITS=32
.else
BITS=64
.endif

.if ${MACHINE_ARCH} == "i386"
MAKE_ARCH=x86-32
.elif ${MACHINE_ARCH} == "amd64"
MAKE_ARCH=x86-64
.elif ${MACHINE_ARCH} == "aarch64"
MAKE_ARCH=arm-64
.elif ${MACHINE_ARCH} == "sparc64"
MAKE_ARCH=sparc-64
.endif

MODJAVA_BUILD_ARGS= -Dbits=${BITS}

WANTLIB=	c iconv m pthread

LIB_DEPENDS=	converters/libiconv

USE_GMAKE=	Yes

SUBST_VARS+=	CC CFLAGS

post-extract:
	cp ${FILESDIR}/Makefile-openbsd-*.gmake ${WRKSRC}/src/c/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/c/Makefile-openbsd-${MAKE_ARCH}.gmake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/  \
		${PREFIX}/lib/tanukiwrapper/
	${INSTALL_DATA} ${WRKSRC}/lib/wrapper.jar \
		${PREFIX}/share/java/classes/tanukiwrapper.jar
	${INSTALL_PROGRAM} ${WRKSRC}/lib/libwrapper.so ${PREFIX}/lib/tanukiwrapper/
	${INSTALL_PROGRAM} ${WRKSRC}/bin/wrapper ${PREFIX}/sbin/tanukiwrapper

do-test:
	cd ${WRKSRC} && ant -Dbits=${BITS} -f build-tests.xml

.include <bsd.port.mk>
