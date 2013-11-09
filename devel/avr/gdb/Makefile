# $OpenBSD: Makefile,v 1.17 2013/11/09 23:19:02 naddy Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' GNU gdb

VER=		6.8
DISTNAME=	gdb-${VER}
PKGNAME=	avr-gdb-${VER}
REVISION=	8

HOMEPAGE=	https://www.gnu.org/software/gdb/gdb.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c expat m ncurses

MASTER_SITES=   	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=		gdb

TEST_DEPENDS=	devel/dejagnu

RUN_DEPENDS=		devel/avr/binutils \
			devel/avr/gcc

BUILD_DEPENDS=		${RUN_DEPENDS}

USE_GROFF =	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>
