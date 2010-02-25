# $OpenBSD: Makefile,v 1.35 2010/02/25 11:02:39 phessler Exp $

VERSION=		2.5
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p3
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
