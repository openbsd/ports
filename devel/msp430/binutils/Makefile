# $OpenBSD: Makefile,v 1.1.1.1 2010/12/01 09:06:52 jasper Exp $

COMMENT=		GNU binutils for msp430

V=			2.20
DISTNAME=		binutils-$V
PKGNAME=		${TARGET}-${DISTNAME}

MASTER_SITES=		${MASTER_SITE_GNU:=binutils/}
PATCHFILES=		binutils-${V}.patch:0

WANTLIB=		c z

CONFIGURE_ARGS+=	--enable-commonbfdlib=no

.include <bsd.port.mk>
