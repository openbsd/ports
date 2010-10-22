# $OpenBSD: Makefile,v 1.5 2010/10/22 15:32:33 jasper Exp $

COMMENT=	binutils for arm-elf cross-development

V=		2.20
DISTNAME=	binutils-${V}

HOMEPAGE=	http://www.gnu.org/software/binutils/

WANTLIB=	c z

MASTER_SITES=	${MASTER_SITE_GNU:=binutils/}

CONFIGURE_ARGS+=--enable-commonbfdlib=no \
		--enable-interwork	 \
		--enable-multilib

.include <bsd.port.mk>
