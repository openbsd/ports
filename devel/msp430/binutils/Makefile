# $OpenBSD: Makefile,v 1.2 2011/05/09 08:58:55 jasper Exp $

COMMENT=		GNU binutils for msp430

V=			2.21
DISTNAME=		binutils-$V
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}
PATCHFILES=		binutils-${V}.patch:0

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

.include <bsd.port.mk>
