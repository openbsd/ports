# $OpenBSD: Makefile,v 1.28 2009/01/01 21:03:27 djm Exp $

VERSION=		2.5
PATCHLEVEL=		.4
#PKG_PATCHLEVEL=		
SHARED_LIBS=		python2.5 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
