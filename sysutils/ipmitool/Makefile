COMMENT=	manage and configure devices that support IPMI

V=		1.8.19
TAG=		IPMITOOL_${V:S/./_/g}
DIST_TUPLE=	codeberg IPMITool ipmitool ${TAG} .
PKGNAME=	ipmitool-$V
REVISION=	2

SITES.sh=	https://spacehopper.org/mirrors/
DISTFILES.sh=	enterprise-numbers.20220204.gz
EXTRACT_ONLY=	IPMITool-ipmitool-${TAG}.tar.gz

CATEGORIES=	sysutils

HOMEPAGE=	https://codeberg.org/IPMITool/ipmitool

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m curses edit crypto c

DEBUG_PACKAGES = ${BUILD_PACKAGES}

# -std=gnu11
COMPILER=	base-clang ports-gcc
COMPILER_LANGS=	c

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoreconf
AUTORECONF=	./bootstrap
AUTOCONF_VERSION= 2.71
AUTOMAKE_VERSION= 1.16
CONFIGURE_ARGS+= --enable-intf-lan \
		--disable-intf-usb \
		--enable-intf-lanplus \
		--enable-intf-serial \
		--disable-intf-free \
		--disable-intf-imb \
		--disable-intf-lipmi \
		--disable-intf-bmc \
		--disable-intf-dummy
CONFIGURE_ENV+=	ac_cv_prog_CURL=curl
USE_GMAKE=	Yes

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc64"
CONFIGURE_ARGS+=	--enable-intf-open
.else
CONFIGURE_ARGS+=	--disable-intf-open
.endif

WRKDIST=	${WRKDIR}/ipmitool

pre-configure:
	cd ${WRKSRC}/contrib; sed -i 's,^#!/bin/bash,#!/bin/sh,' bmclanconf *.sh

post-configure:
	gzcat < ${FULLDISTDIR}/enterprise-numbers.20220204.gz > ${WRKBUILD}/enterprise-numbers

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipmitool/
	${INSTALL_DATA} ${WRKSRC}/contrib/README ${PREFIX}/share/ipmitool/
	cd ${WRKSRC}/contrib && ${INSTALL_SCRIPT} bmclanconf collect_data.sh \
	    create_rrds.sh create_webpage.sh create_webpage_compact.sh \
	    oem_ibm_sel_map ${PREFIX}/share/ipmitool/

.include <bsd.port.mk>
