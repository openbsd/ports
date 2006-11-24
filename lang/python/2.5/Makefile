# $OpenBSD: Makefile,v 1.3 2006/11/24 20:48:23 steven Exp $

VERSION=		2.5
PATCHLEVEL=
PKG_PATCHLEVEL=		p1
SHARED_LIBS=		python2.5 0.0

# PSUBDIR=		python/${VERSION}
AUTOCONF_VERSION=	2.59

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
