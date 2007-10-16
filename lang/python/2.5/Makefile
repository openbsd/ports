# $OpenBSD: Makefile,v 1.12 2007/10/16 08:22:32 ajacoutot Exp $

VERSION=		2.5
PATCHLEVEL=		.1
PKG_PATCHLEVEL=		p4
SHARED_LIBS=		python2.5 0.0

# PSUBDIR=		python/${VERSION}

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

CONFIGURE_ARGS+=	--with-cxx_main

.include <bsd.port.mk>
