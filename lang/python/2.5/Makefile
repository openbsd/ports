# $OpenBSD: Makefile,v 1.2 2006/11/08 19:00:19 djm Exp $

VERSION=		2.5
PATCHLEVEL=
PKG_PATCHLEVEL=		p0
SHARED_LIBS=		python2.5 0.0

# PSUBDIR=		python/${VERSION}
AUTOCONF_VERSION=	2.59

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

.include <bsd.port.mk>
