# $OpenBSD: Makefile,v 1.6 2006/04/18 17:29:35 alek Exp $

VERSION=		2.4
PATCHLEVEL=		.3
PKG_PATCHLEVEL=
SHARED_LIBS=		python2.4 0.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
