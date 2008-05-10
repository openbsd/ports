# $OpenBSD: Makefile,v 1.19 2008/05/10 17:10:24 deanna Exp $

VERSION=		2.5
PATCHLEVEL=		.2
PKG_PATCHLEVEL=		p1
SHARED_LIBS=		python2.5 0.0

# PSUBDIR=		python/${VERSION}

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif
.if ${MACHINE_ARCH} == "alpha"
CFLAGS+=		-mieee
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main
ALL_TARGET?=		all ./Lib/plat-openbsd4

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
