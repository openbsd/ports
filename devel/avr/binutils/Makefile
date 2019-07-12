# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:14 sthen Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' GNU binutils #'

VER=		2.30
DISTNAME=	binutils-${VER}
PKGNAME=	avr-binutils-${VER}
EXTRACT_SUFX=	.tar.bz2

HOMEPAGE=	https://www.gnu.org/software/binutils/

# GPLv3
PERMIT_PACKAGE=	Yes
WANTLIB=		c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

CONFIGURE_ARGS+=--enable-commonbfdlib=no

LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>
