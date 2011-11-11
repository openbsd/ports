# $OpenBSD: Makefile,v 1.9 2011/11/11 18:38:17 jasper Exp $

COMMENT=		GNU binutils for msp430

V=			2.21.1
R=			20110716
DISTNAME=		binutils-$V
REVISION=		2

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}
PATCHFILES=		msp430-binutils-${V}-${R}.patch:0
LTS_PATCHES=		msp430-binutils-2.21.1-20110716-sf3143071.patch \
			msp430-binutils-2.21.1-20110716-sf3379341.patch \
			msp430-binutils-2.21.1-20110716-sf3386145.patch \
			msp430-binutils-2.21.1-20110716-sf3400711.patch \
			msp430-binutils-2.21.1-20110716-sf3400750.patch

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

.include <bsd.port.mk>
