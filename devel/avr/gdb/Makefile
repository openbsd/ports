# $OpenBSD: Makefile,v 1.6 2009/12/09 16:34:06 ckuethe Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' GNU gdb

VER=		6.3
DISTNAME=	gdb-${VER}
PKGNAME=	avr-gdb-${VER}p3

HOMEPAGE=	http://www.gnu.org/software/gdb/gdb.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m ncurses

MASTER_SITES=   	${MASTER_SITE_GNU:=gdb/}

REGRESS_DEPENDS=	::devel/dejagnu

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>
