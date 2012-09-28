# $OpenBSD: Makefile,v 1.7 2012/09/28 18:55:27 sthen Exp $

COMMENT=	binutils for arm-elf cross-development

V=		2.20
REVISION=	0
DISTNAME=	binutils-${V}

HOMEPAGE=	http://www.gnu.org/software/binutils/

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

.include <bsd.port.mk>
