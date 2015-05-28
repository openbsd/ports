# $OpenBSD: Makefile,v 1.1.1.1 2015/05/28 23:28:25 bmercer Exp $

COMMENT=	binutils for arm-none-eabi cross-development

V=		2.25
#REVISION=	0
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
