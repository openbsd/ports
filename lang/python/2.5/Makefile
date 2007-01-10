# $OpenBSD: Makefile,v 1.4 2007/01/10 16:57:56 steven Exp $

VERSION=		2.5
PATCHLEVEL=
PKG_PATCHLEVEL=		p2
SHARED_LIBS=		python2.5 0.0

# PSUBDIR=		python/${VERSION}
AUTOCONF_VERSION=	2.59

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

CONFIGURE_ARGS+=	--with-cxx_main

.include <bsd.port.mk>
