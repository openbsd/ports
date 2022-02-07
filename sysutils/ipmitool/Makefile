# $OpenBSD: Makefile,v 1.30 2022/02/07 16:40:36 sthen Exp $

COMMENT=	manage and configure devices that support IPMI

# if changing back from git archive to release, check if post-configure
# and MASTER_SITES0 can go too.
GH_ACCOUNT=	ipmitool
GH_PROJECT=	ipmitool
GH_COMMIT=	39ca56bf33975b8a8b7e87928d67dc66366161da
DISTNAME=	ipmitool-1.8.18pl20211103
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

post-configure:
	gzcat < ${FULLDISTDIR}/enterprise-numbers.20220204.gz > ${WRKBUILD}/enterprise-numbers

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipmitool/
	${INSTALL_DATA} ${WRKSRC}/contrib/README ${PREFIX}/share/ipmitool/
	cd ${WRKSRC}/contrib && ${INSTALL_SCRIPT} bmclanconf collect_data.sh \
	    create_rrds.sh create_webpage.sh create_webpage_compact.sh \
	    oem_ibm_sel_map ${PREFIX}/share/ipmitool/

.include <bsd.port.mk>
