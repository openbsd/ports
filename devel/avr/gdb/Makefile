# $OpenBSD: Makefile,v 1.14 2013/03/11 10:50:01 espie Exp $

COMMENT=	Atmel AVR 8-bit RISC microcontrollers' GNU gdb

VER=		6.8
DISTNAME=	gdb-${VER}
PKGNAME=	avr-gdb-${VER}
REVISION=	6

HOMEPAGE=	http://www.gnu.org/software/gdb/gdb.html

# GPLv2+
PERMIT_PACKAGE_CDROM=   Yes
WANTLIB=		c expat m ncurses

MASTER_SITES=   	${MASTER_SITE_GNU:=gdb/}
DIST_SUBDIR=		gdb

TEST_DEPENDS=	devel/dejagnu

RUN_DEPENDS=		devel/avr/binutils \
			devel/avr/gcc

BUILD_DEPENDS=		${RUN_DEPENDS}

USE_LIBTOOL=	Yes
USE_GROFF =	Yes
LIBTOOL_FLAGS=	--tag=disable-shared

.include <bsd.port.mk>
