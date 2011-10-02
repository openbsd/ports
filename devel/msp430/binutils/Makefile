# $OpenBSD: Makefile,v 1.6 2011/10/02 18:26:32 jasper Exp $

COMMENT=		GNU binutils for msp430

V=			2.21.1
R=			20110716
DISTNAME=		binutils-$V
REVISION=		1
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}
PATCHFILES=		msp430-binutils-${V}-${R}.patch:0 \
			msp430-binutils-2.21.1-20110716-sf3143071.patch:1 \
			msp430-binutils-2.21.1-20110716-sf3379341.patch:1 \
			msp430-binutils-2.21.1-20110716-sf3386145.patch:1 \
			msp430-binutils-2.21.1-20110716-sf3400711.patch:1 \
			msp430-binutils-2.21.1-20110716-sf3400750.patch:1

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

.include <bsd.port.mk>
