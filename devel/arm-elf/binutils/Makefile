# $OpenBSD: Makefile,v 1.10 2013/08/07 15:37:08 naddy Exp $

COMMENT=	binutils for arm-elf cross-development

V=		2.20
REVISION=	0
DISTNAME=	binutils-${V}

HOMEPAGE=	http://www.gnu.org/software/binutils/

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

.include <bsd.port.mk>
