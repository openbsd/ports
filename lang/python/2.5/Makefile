# $OpenBSD: Makefile,v 1.30 2009/06/25 01:49:54 jolan Exp $

VERSION=		2.5
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p1
SHARED_LIBS=		python2.5 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
