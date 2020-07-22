# $OpenBSD: Makefile,v 1.31 2020/07/22 12:53:31 tb Exp $

COMMENT=		802.11 WEP and WPA-PSK keys cracking program
DISTNAME=		aircrack-ng-1.5.2
REVISION=		4
CATEGORIES=		security

HOMEPAGE=		https://www.aircrack-ng.org/

MAINTAINER=		Benoit Lecocq <benoit@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

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

# Disable NEON optimizations (arm, aarch64) since clang can't compile the code
# https://github.com/aircrack-ng/aircrack-ng/issues/1957
CONFIGURE_ENV+=		ax_cv_neon_cflags=no ax_cv_neon_cxxflags=no

MAKE_ENV+=		SQLITE=true UNSTABLE=true
MAKE_FLAGS+=		CC=${CC}

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=              -Dx86=1
.else
PKG_ARGS+=              -Dx86=0
.endif
# XXX PFRAG.arm files relate to NEON optimizations, disabled above.
#.if ${MACHINE_ARCH} == "arm" || ${MACHINE_ARCH} == "aarch64"
#PKG_ARGS+=              -Darm=1
#.else
PKG_ARGS+=              -Darm=0
#.endif
# XXX AltiVec optimizations can't be built with clang, and POWER8 ones
# are useless on powerpc
.if ${MACHINE_ARCH} == "powerpc"
MAKE_ENV+=              ALTIVEC=false POWER8=false
.endif


pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/airodump-ng.h

.include <bsd.port.mk>
