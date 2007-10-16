# $OpenBSD: Makefile,v 1.15 2007/10/16 08:22:32 ajacoutot Exp $

VERSION=		2.4
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p5
SHARED_LIBS=		python2.4 0.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
