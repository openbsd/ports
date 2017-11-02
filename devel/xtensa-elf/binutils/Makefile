# $OpenBSD: Makefile,v 1.1.1.1 2017/11/02 18:30:57 bentley Exp $

COMMENT=	binutils for xtensa-elf cross-development

V=		2.27
DISTNAME=	binutils-$V

HOMEPAGE=	https://www.gnu.org/software/binutils/

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

.include <bsd.port.mk>
