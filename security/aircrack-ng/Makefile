# $OpenBSD: Makefile,v 1.25 2019/05/18 12:13:34 naddy Exp $

COMMENT=		802.11 WEP and WPA-PSK keys cracking program
DISTNAME=		aircrack-ng-1.5.2
REVISION=		1
CATEGORIES=		security

HOMEPAGE=		https://www.aircrack-ng.org/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB+=		c pthread crypto z pcre
WANTLIB+=		${COMPILER_LIBCXX} m sqlite3

MASTER_SITES=		https://download.aircrack-ng.org/

BUILD_DEPENDS=		devel/shtool \
			devel/pkgconf
LIB_DEPENDS=		databases/sqlite3 \
			devel/pcre

RUN_DEPENDS+=		net/arp-scan,-mac>=20190128

USE_GMAKE=		Yes
.if ${MACHINE_ARCH} == "i386"
# ld: error: undefined symbol: __i686.get_pc_thunk.bx
USE_LLD=		No
.endif
LIBTOOL_FLAGS=		--tag=disable-static
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
CONFIGURE_STYLE=	autoreconf

MAKE_ENV+=		SQLITE=true UNSTABLE=true
MAKE_FLAGS+=		CC=${CC}

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=              -Dx86=1
.else
PKG_ARGS+=              -Dx86=0
.endif
.if ${MACHINE_ARCH} == "arm"
PKG_ARGS+=              -Darm=1
.else
PKG_ARGS+=              -Darm=0
.endif
.if ${MACHINE_ARCH} == "powerpc"
PKG_ARGS+=              -Dppc=1
.else
PKG_ARGS+=              -Dppc=0
.endif


pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/airodump-ng.h

.include <bsd.port.mk>
