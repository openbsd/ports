# $OpenBSD: Makefile,v 1.18 2008/10/18 11:55:57 djm Exp $

VERSION=		2.4
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p7
SHARED_LIBS=		python2.4 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

ALL_TARGET?=	all ${WRKSRC}/Lib/plat-openbsd4

.include <bsd.port.mk>
