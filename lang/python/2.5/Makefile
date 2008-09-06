# $OpenBSD: Makefile,v 1.25 2008/09/06 23:39:57 djm Exp $

VERSION=		2.5
PATCHLEVEL=		.2
PKG_PATCHLEVEL=		p5
SHARED_LIBS=		python2.5 1.0

# PSUBDIR=		python/${VERSION}

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "sparc64"
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main
ALL_TARGET =		everything

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
