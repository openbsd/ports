# $OpenBSD: Makefile,v 1.6 2011/11/11 18:33:03 jasper Exp $

COMMENT=	binutils for arm-elf cross-development

V=		2.20
DISTNAME=	binutils-${V}

HOMEPAGE=	http://www.gnu.org/software/binutils/

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

.include <bsd.port.mk>
