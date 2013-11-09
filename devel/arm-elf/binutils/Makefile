# $OpenBSD: Makefile,v 1.11 2013/11/09 23:19:02 naddy Exp $

COMMENT=	binutils for arm-elf cross-development

V=		2.20
REVISION=	1
DISTNAME=	binutils-${V}

HOMEPAGE=	https://www.gnu.org/software/binutils/

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

.include <bsd.port.mk>
