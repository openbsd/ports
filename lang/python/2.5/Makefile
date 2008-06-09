# $OpenBSD: Makefile,v 1.20 2008/06/09 12:34:55 espie Exp $

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
ALL_TARGET =		everything

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
