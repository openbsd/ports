COMMENT=	manage and configure devices that support IPMI

V=		1.8.19
GH_ACCOUNT=	ipmitool
GH_PROJECT=	ipmitool
GH_TAGNAME=	IPMITOOL_${V:S/./_/g}
PKGNAME=	ipmitool-$V
REVISION=	0

# renamed as the distfile was re-rolled
DISTFILES=	ipmitool-IPMITOOL_1_8_19.0{ipmitool-IPMITOOL_1_8_19}.tar.gz

SITES.sh=	https://spacehopper.org/mirrors/
DISTFILES.sh=	enterprise-numbers.20220204.gz
EXTRACT_ONLY=	ipmitool-IPMITOOL_1_8_19.0.tar.gz

CATEGORIES=	sysutils

# https://sourceforge.net/projects/ipmitool/
HOMEPAGE=	https://github.com/ipmitool/ipmitool

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m curses edit crypto c

# -std=gnu11
COMPILER =	base-clang ports-gcc

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
USE_GMAKE=	Yes

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc64"
CONFIGURE_ARGS+=	--enable-intf-open
.else
CONFIGURE_ARGS+=	--disable-intf-open
.endif

pre-configure:
	cd ${WRKSRC}/contrib; sed -i 's,^#!/bin/bash,#!/bin/sh,' bmclanconf *.sh

CONFIGURE_ENV+=	ac_cv_prog_CURL=curl
post-configure:
	gzcat < ${FULLDISTDIR}/enterprise-numbers.20220204.gz > ${WRKBUILD}/enterprise-numbers

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipmitool/
	${INSTALL_DATA} ${WRKSRC}/contrib/README ${PREFIX}/share/ipmitool/
	cd ${WRKSRC}/contrib && ${INSTALL_SCRIPT} bmclanconf collect_data.sh \
	    create_rrds.sh create_webpage.sh create_webpage_compact.sh \
	    oem_ibm_sel_map ${PREFIX}/share/ipmitool/

.include <bsd.port.mk>
