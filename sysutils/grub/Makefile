# $OpenBSD: Makefile,v 1.9 2013/03/11 11:41:30 espie Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	GRand Unified Bootloader

DISTNAME=	grub-0.97
REVISION=	4
CATEGORIES=	sysutils

HOMEPAGE=	http://www.gnu.org/software/grub/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=	c ncurses util

MASTER_SITES=	ftp://alpha.gnu.org/gnu/grub/ \
		ftp://ftp.funet.fi/pub/gnu/alpha/gnu/grub/ \
		ftp://ftp.ibiblio.org/pub/mirrors/gnu/alpha/gnu/grub/

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

CFLAGS=		-ftrampolines -fno-stack-protector

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/grub
	${INSTALL_DATA} ${FILESDIR}/menu.lst ${PREFIX}/share/examples/grub

.include <bsd.port.mk>
