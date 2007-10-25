# $OpenBSD: Makefile,v 1.15 2007/10/25 21:05:33 steven Exp $

VERSION=		2.5
PATCHLEVEL=		.1
PKG_PATCHLEVEL=		p6
SHARED_LIBS=		python2.5 0.0

# PSUBDIR=		python/${VERSION}

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

CONFIGURE_ARGS+=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
