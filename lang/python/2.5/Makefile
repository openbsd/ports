# $OpenBSD: Makefile,v 1.23 2008/07/25 19:32:21 sthen Exp $

VERSION=		2.5
PATCHLEVEL=		.2
PKG_PATCHLEVEL=		p3
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
