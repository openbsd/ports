# $OpenBSD: Makefile,v 1.5 2005/12/27 19:41:21 alek Exp $

VERSION=		2.4
PATCHLEVEL=		.2
PKG_PATCHLEVEL=		p0
SHARED_LIBS=		python2.4 0.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
