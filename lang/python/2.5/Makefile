# $OpenBSD: Makefile,v 1.37 2010/04/15 14:58:24 ajacoutot Exp $

VERSION=		2.5
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p5
SHARED_LIBS=		python2.5 1.0

.if ${MACHINE_ARCH} == "mips64"
BROKEN = Floating point exception while generating pyc objects
.endif

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH:Mmips64*}
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
