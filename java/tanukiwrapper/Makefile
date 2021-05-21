# $OpenBSD: Makefile,v 1.21 2021/05/21 11:51:08 kurt Exp $

COMMENT=	Tanuki Java Service Wrapper

V=		3.5.45
DISTNAME=	wrapper_${V}_src
PKGNAME=	java-tanukiwrapper-${V}
REVISION=	0
CATEGORIES=	java

HOMEPAGE=	https://wrapper.tanukisoftware.com/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

MASTER_SITES=	https://download.tanukisoftware.com/wrapper/${V}/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	java
MODJAVA_VER=	1.8
MODJAVA_BUILD=	ant

.if ${MACHINE_ARCH} == "i386"
BITS=32
MAKE_ARCH=x86-32
.elif ${MACHINE_ARCH} == "amd64"
BITS=64
MAKE_ARCH=x86-64
.elif ${MACHINE_ARCH} == "aarch64"
BITS=64
MAKE_ARCH=armhf-64
.endif

MODJAVA_BUILD_ARGS= -Dbits=${BITS}

WANTLIB=	c iconv m pthread

LIB_DEPENDS=	converters/libiconv

USE_GMAKE=	Yes

SUBST_VARS+=	CC CFLAGS

post-extract:
	cp ${FILESDIR}/Makefile-openbsd-${MAKE_ARCH}.gmake ${WRKSRC}/src/c/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/c/Makefile-openbsd-${MAKE_ARCH}.gmake

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/java/classes/  \
		${PREFIX}/lib/tanukuwrapper/
	${INSTALL_DATA} ${WRKSRC}/lib/wrapper.jar \
		${PREFIX}/share/java/classes/tanukiwrapper.jar
	${INSTALL_PROGRAM} ${WRKSRC}/lib/libwrapper.so ${PREFIX}/lib/tanukuwrapper/
	${INSTALL_PROGRAM} ${WRKSRC}/bin/wrapper ${PREFIX}/sbin/tanukiwrapper

do-test:
	cd ${WRKSRC} && ant -Dbits=${BITS} -f build-tests.xml

.include <bsd.port.mk>
