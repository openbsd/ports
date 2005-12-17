# $OpenBSD: Makefile,v 1.4 2005/12/17 12:33:00 alek Exp $

VERSION=		2.4
PATCHLEVEL=		.2
PKG_PATCHLEVEL=

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
