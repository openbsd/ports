# $OpenBSD: Makefile,v 1.17 2015/01/22 22:17:46 naddy Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' GNU binutils

VER=		2.20
DISTNAME=	binutils-${VER}
PKGNAME=	avr-binutils-${VER}
REVISION=	2
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/binutils/

# GPLv3
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

CONFIGURE_ARGS+=--enable-commonbfdlib=no

LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>
