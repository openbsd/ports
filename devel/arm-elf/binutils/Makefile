# $OpenBSD: Makefile,v 1.9 2013/07/15 04:37:40 espie Exp $

COMMENT=	binutils for arm-elf cross-development

V=		2.20
REVISION=	0
DISTNAME=	binutils-${V}
NOT_FOR_ARCHS =	${GCC2_ARCHS}

HOMEPAGE=	http://www.gnu.org/software/binutils/

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}
DIST_SUBDIR=	binutils

USE_LIBTOOL=	No

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

.include <bsd.port.mk>
