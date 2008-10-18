# $OpenBSD: Makefile,v 1.26 2008/10/18 12:01:25 djm Exp $

VERSION=		2.5
PATCHLEVEL=		.2
PKG_PATCHLEVEL=		p6
SHARED_LIBS=		python2.5 1.0

# PSUBDIR=		python/${VERSION}

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
