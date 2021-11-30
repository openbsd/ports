# $OpenBSD: Makefile,v 1.29 2021/11/30 23:17:16 tb Exp $

COMMENT=	manage and configure devices that support IPMI

V=		1.8.18
DISTNAME=	ipmitool-$V
REVISION=	6
CATEGORIES=	sysutils
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://github.com/ipmitool/ipmitool

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	m curses edit crypto c

MASTER_SITES=	https://github.com/ipmitool/ipmitool/releases/download/IPMITOOL_${V:C/\./_/g}/

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.69
CONFIGURE_ARGS+= --enable-intf-lan \
		--disable-intf-usb \
		--enable-intf-lanplus \
		--enable-intf-serial \
		--disable-intf-free \
		--disable-intf-imb \
		--disable-intf-lipmi \
		--disable-intf-bmc \
		--disable-intf-dummy

.if ${MACHINE_ARCH} == "aarch64" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "i386" || ${MACHINE_ARCH} == "powerpc64"
CONFIGURE_ARGS+=	--enable-intf-open
.else
CONFIGURE_ARGS+=	--disable-intf-open
.endif

pre-configure:
	cd ${WRKSRC}/contrib; sed -i 's,^#!/bin/bash,#!/bin/sh,' bmclanconf *.sh

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipmitool/
	${INSTALL_DATA} ${WRKSRC}/contrib/README ${PREFIX}/share/ipmitool/
	cd ${WRKSRC}/contrib && ${INSTALL_SCRIPT} bmclanconf collect_data.sh \
	    create_rrds.sh create_webpage.sh create_webpage_compact.sh \
	    oem_ibm_sel_map ${PREFIX}/share/ipmitool/

.include <bsd.port.mk>
