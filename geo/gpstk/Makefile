# $OpenBSD: Makefile,v 1.23 2019/07/12 20:46:29 sthen Exp $

COMMENT=		GPS processing toolkit

V=			2.10
GH_ACCOUNT=		SGL-UT
GH_PROJECT=		GPSTk
GH_TAGNAME=		v$V
PKGNAME=		gpstk-$V

CATEGORIES=		geo devel

SHARED_LIBS=		gpstk 16.0

HOMEPAGE=		http://www.gpstk.org/

# LGPLv3.0+
PERMIT_PACKAGE=	Yes

WANTLIB=		${COMPILER_LIBCXX} c m

MODULES=		devel/cmake

NO_TEST=		Yes
.if ${MACHINE_ARCH} != "i386" && ${MACHINE_ARCH} != "amd64" && ${MACHINE_ARCH} != "aarch64"
# ...higher opt levels are too much for smaller/slower build machines
CFLAGS+=               -O0
CXXFLAGS+=             -O0
.endif

COMPILER=		base-clang ports-gcc
CONFIGURE_ARGS=		-DBUILD_EXT=on

.include <bsd.port.mk>
