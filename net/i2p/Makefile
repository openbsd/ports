COMMENT=	i2p routing protocol

V =		2.8.2
DISTNAME =	i2psource_${V}
PKGNAME =	i2p-${V}

CATEGORIES=	net

HOMEPAGE=	https://geti2p.net/en/

MAINTAINER=	Pascal Stumpf <pascal@stumpf.co>

# Apache-2.0 Artistic BSD CC-BY-2.5 CC-BY-3.0 CC-BY-SA-3.0
# EPLv1.0 GPLv2 GPLv3 LGPLv2.1 LGPLv3 MIT public-domain WTFPLv2
PERMIT_PACKAGE=	Yes

EXTRACT_SUFX =	.tar.bz2

WANTLIB +=	gmp

SITES =		https://files.i2p-projekt.de/${V}/

MODULES=	java
MODJAVA_VER=	1.8
MODJAVA_BUILD=	ant
MODJAVA_BUILD_TARGET_NAME= pkg

BUILD_DEPENDS=	devel/gettext,-tools
RUN_DEPENDS=	devel/gettext,-runtime \
		java/tanukiwrapper
LIB_DEPENDS=	devel/gmp

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=	-Dx86=1
.else
PKG_ARGS+=	-Dx86=0
.endif

.if ${MACHINE_ARCH} == "i386"
BITS=32
.else
BITS=64
.endif

DB_DIR=		${LOCALSTATEDIR}/i2p

SUBST_VARS=	DB_DIR JAVA_HOME

MAKE_ENV=	CC=${CC} BITS=${BITS} MACHINE_ARCH=${MACHINE_ARCH}

# test requires addition dependencies (atleast: junit, hamcrest, jmockfit)
NO_TEST=	Yes

WRKDIST=	${WRKDIR}/i2p-${V}

post-patch:
	${SUBST_CMD} ${WRKSRC}/installer/resources/wrapper.config
	${SUBST_CMD} ${WRKSRC}/installer/resources/i2prouter
	${SUBST_CMD} ${WRKSRC}/installer/resources/eepget

post-build:
	cd ${WRKSRC}/core/c && ${MAKE_ENV} ${WRKSRC}/core/c/build.sh

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/i2p
	${INSTALL_DATA}  ${WRKSRC}/pkg-temp/*.{txt,config} \
		${PREFIX}/share/i2p
	${INSTALL_DATA}  ${WRKSRC}/pkg-temp/man/*{get,ter}.1 \
		${PREFIX}/man/man1
	${INSTALL_SCRIPT} ${WRKSRC}/pkg-temp/{eepget,i2prouter} \
		${PREFIX}/bin
.for dir in lib webapps docs eepsite geoip certificates
	cp -Rp ${WRKSRC}/pkg-temp/${dir} ${PREFIX}/share/i2p
.endfor
.if ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "amd64"
	cp ${WRKSRC}/core/c/t/freenet/support/CPUInformation/libjcpuid*.so \
		${PREFIX}/share/i2p/lib/libjcpuid.so
.endif
	cp ${WRKSRC}/core/c/t/libjbigi.so ${PREFIX}/share/i2p/lib
	rm -rf ${PREFIX}/share/i2p/lib/{wrapper,wrapper.jar}

.include <bsd.port.mk>
