# $OpenBSD: Makefile,v 1.10 2013/11/09 23:19:03 naddy Exp $

ONLY_FOR_ARCHS=	i386

COMMENT=	GRand Unified Bootloader

DISTNAME=	grub-0.97
REVISION=	5
CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/grub/

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
