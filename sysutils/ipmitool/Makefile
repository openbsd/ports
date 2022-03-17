COMMENT=	manage and configure devices that support IPMI

# use a git archive for now, the last release is rather old
# https://github.com/ipmitool/ipmitool/issues/303
# if changing back to a release when available, check if post-configure
# and MASTER_SITES0 can go too.
GH_ACCOUNT=	ipmitool
GH_PROJECT=	ipmitool
GH_COMMIT=	65ba015f5c41f8495a85f7b2619037f815c3436a
DISTNAME=	ipmitool-1.8.18pl20220309
DISTFILES=	${GH_DISTFILE} enterprise-numbers.20220204.gz:0
EXTRACT_ONLY=	${GH_DISTFILE:C/{.*//}

#V=		1.8.18
#DISTNAME=	ipmitool-$V
#EXTRACT_SUFX=	.tar.bz2
CATEGORIES=	sysutils

HOMEPAGE=	https://github.com/ipmitool/ipmitool

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m curses edit crypto c

# -std=gnu11
COMPILER = 	base-clang ports-gcc

#MASTER_SITES=	https://github.com/ipmitool/ipmitool/releases/download/IPMITOOL_${V:C/\./_/g}/
MASTER_SITES0=	https://spacehopper.org/mirrors/

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

# hopefully there is a bundled file when there's a new release and
# we can get rid of this mess
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
