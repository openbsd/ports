COMMENT=		802.11 WEP and WPA-PSK keys cracking program

VER=			1.7
DISTNAME=		aircrack-ng-${VER}
REVISION=		0
CATEGORIES=		security

HOMEPAGE=		https://www.aircrack-ng.org/

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB+=		${COMPILER_LIBCXX} c crypto m pcap pcre pthread sqlite3 ssl z

SITES=			https://download.aircrack-ng.org/

BUILD_DEPENDS=		devel/shtool \
			devel/pkgconf
LIB_DEPENDS=		databases/sqlite3 \
			devel/pcre

RUN_DEPENDS+=		net/arp-scan,-mac>=20190128

COMPILER=		base-clang ports-gcc

USE_GMAKE=		Yes
LIBTOOL_FLAGS=		--tag=disable-static
AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16
CONFIGURE_STYLE=	autoreconf

.if ${MACHINE_ARCH} == "arm"
CONFIGURE_ENV+=		ax_cv_neon_cflags=no ax_cv_neon_cxxflags=no
.endif

MAKE_ENV+=		SQLITE=true UNSTABLE=true
MAKE_FLAGS+=		CC="${CC}" CFLAGS="${CFLAGS}"

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
PKG_ARGS+=              -Dx86=1
.else
PKG_ARGS+=              -Dx86=0
.endif

.if ${MACHINE_ARCH} == "aarch64"
PKG_ARGS+=              -Darm=1
.else
PKG_ARGS+=              -Darm=0
.endif

# XXX AltiVec optimizations can't be built with Clang, and POWER8 ones
# are useless on powerpc
.if ${MACHINE_ARCH} == "powerpc"
MAKE_ENV+=              ALTIVEC=false POWER8=false
.endif

API_REV=		${VER}.0
SUBST_VARS+=		API_REV

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/airodump-ng/airodump-ng.c

.include <bsd.port.mk>
