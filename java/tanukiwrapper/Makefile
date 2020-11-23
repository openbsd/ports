# $OpenBSD: Makefile,v 1.19 2020/11/23 12:37:25 sthen Exp $

# would normally be set in java.port.mk, but i2p pulls in bsd.port.arch.mk
# itself which interferes with ONLY_FOR_ARCHS coming from MODULES.
# list is for jdk 1.8 arches.
ONLY_FOR_ARCHS= amd64 i386

BROKEN-i386=	various relocation R_386_PC32 cannot be used against symbol XX

COMMENT=	Tanuki Java Service Wrapper

V=		3.5.44
DISTNAME=	wrapper_${V}_src
PKGNAME=	java-tanukiwrapper-${V}
CATEGORIES=	java

HOMEPAGE=	https://wrapper.tanukisoftware.com/

MAINTAINER=	Dimitri Karamazov <deserter666@danwin1210.me>

MASTER_SITES=	https://download.tanukisoftware.com/wrapper/${V}/

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=	java
MODJAVA_VER=	1.8
MODJAVA_BUILD=	ant

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
BITS=64
.else
BITS=32
.endif

MODJAVA_BUILD_ARGS= -Dbits=${BITS}

WANTLIB=	c iconv m pthread

LIB_DEPENDS=	converters/libiconv

USE_GMAKE=	Yes

SUBST_VARS+=	CC CFLAGS

post-extract:
	cp ${FILESDIR}/Makefile-openbsd-x86-${BITS}.gmake ${WRKSRC}/src/c/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/c/Makefile-openbsd-x86-${BITS}.gmake

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
