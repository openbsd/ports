# $OpenBSD: Makefile,v 1.3 2011/09/05 07:59:58 jasper Exp $

COMMENT=		GNU binutils for msp430

V=			2.21.1
R=			20110716
DISTNAME=		binutils-$V
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}
PATCHFILES=		msp430-binutils-${V}-${R}.patch:0

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

.include <bsd.port.mk>
