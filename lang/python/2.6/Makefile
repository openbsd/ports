# $OpenBSD: Makefile,v 1.10 2009/11/22 22:53:19 jasper Exp $

VERSION=		2.6
PATCHLEVEL=		.3
PKG_PATCHLEVEL=		p0
SHARED_LIBS=		python2.6 1.0

# PSUBDIR=		python/${VERSION}

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH} == "mips64"
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
