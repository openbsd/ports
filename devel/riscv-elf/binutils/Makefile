# $OpenBSD: Makefile,v 1.1.1.1 2018/06/08 14:24:32 kevlo Exp $

COMMENT=	binutils for riscv-elf cross-development

V=		2.30
DISTNAME=	binutils-${V}

HOMEPAGE=	https://www.gnu.org/software/binutils/

WANTLIB=	c

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

SUBST_VARS +=	CONFIG

.include <bsd.port.mk>
