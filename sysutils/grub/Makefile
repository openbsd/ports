# $OpenBSD: Makefile,v 1.14 2019/07/12 20:49:43 sthen Exp $

BROKEN=		fails with clang, fails with ports-gcc

ONLY_FOR_ARCHS=	i386

COMMENT=	GRand Unified Bootloader

DISTNAME=	grub-0.97
REVISION=	7
CATEGORIES=	sysutils

HOMEPAGE=	https://www.gnu.org/software/grub/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB=	c ncurses util

MASTER_SITES=	ftp://alpha.gnu.org/gnu/grub/ \
		ftp://ftp.funet.fi/pub/gnu/alpha/gnu/grub/ \
		ftp://ftp.ibiblio.org/pub/mirrors/gnu/alpha/gnu/grub/

CONFIGURE_STYLE=gnu

CFLAGS=		-ftrampolines -fno-stack-protector -fno-pie -nopie

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/grub
	${INSTALL_DATA} ${FILESDIR}/menu.lst ${PREFIX}/share/examples/grub

.include <bsd.port.mk>
