# $OpenBSD: Makefile,v 1.6 2020/12/05 17:21:55 solene Exp $

# would normally be set in java.port.mk, but i2p pulls in bsd.port.arch.mk
# itself which interferes with ONLY_FOR_ARCHS coming from MODULES.
# list is for jdk 1.8 arches.
ONLY_FOR_ARCHS=	amd64 i386

COMMENT=	i2p routing protocol

V=		0.9.48
DISTNAME=	i2psource_${V}
EXTRACT_SUFX=	.tar.bz2
PKGNAME=	i2p-${V}

CATEGORIES=	net

HOMEPAGE=	https://geti2p.net/en/

MAINTAINER=	Dimitri karamazov <deserter666@danwin1210.me>

# Apache-2.0 Artistic BSD CC-BY-2.5 CC-BY-3.0 CC-BY-SA-3.0
# EPLv1.0 GPLv2 GPLv3 LGPLv2.1 LGPLv3 MIT public-domain WTFPLv2
PERMIT_PACKAGE=	Yes

WANTLIB +=	gmp

MASTER_SITES=	https://download.i2p2.de/releases/$V/ \
		https://launchpad.net/i2p/trunk/$V/+download/

MODULES=	java
MODJAVA_VER=	1.8
MODJAVA_BUILD=	ant
MODJAVA_BUILD_TARGET_NAME= pkg

BUILD_DEPENDS=	devel/gettext,-tools
RUN_DEPENDS=	devel/gettext,-runtime \
		java/tanukiwrapper
LIB_DEPENDS=	devel/gmp

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlp64}
BITS=64
.else
BITS=32
.endif

DB_DIR=		${LOCALSTATEDIR}/i2p

SUBST_VARS=	DB_DIR JAVA_HOME

MAKE_ENV=	CC=${CC} BITS=${BITS}

WRKDIST=	${WRKDIR}/${PKGNAME}

# test requires addition dependencies (atleast: junit, hamcrest, jmockfit)
NO_TEST=	Yes

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
	cp ${WRKSRC}/core/c/t/freenet/support/CPUInformation/libjcpuid*.so \
		${PREFIX}/share/i2p/lib/libjcpuid.so
	cp ${WRKSRC}/core/c/t/libjbigi.so ${PREFIX}/share/i2p/lib
	rm -rf ${PREFIX}/share/i2p/lib/{wrapper,wrapper.jar}

.include <bsd.port.mk>
