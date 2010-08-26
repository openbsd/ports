# $OpenBSD: Makefile,v 1.8 2010/08/26 05:16:12 jasper Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' GNU gdb

VER=		6.8
DISTNAME=	gdb-${VER}
PKGNAME=	avr-gdb-${VER}
REVISION=	4

HOMEPAGE=	http://www.gnu.org/software/gdb/gdb.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c expat m ncurses

MASTER_SITES=   	${MASTER_SITE_GNU:=gdb/}

REGRESS_DEPENDS=	::devel/dejagnu

RUN_DEPENDS=		::devel/avr/binutils \
			::devel/avr/gcc

BUILD_DEPENDS=		${RUN_DEPENDS}

USE_LIBTOOL=	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>
