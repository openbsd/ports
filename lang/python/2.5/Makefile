# $OpenBSD: Makefile,v 1.39 2010/09/16 22:34:08 fgsch Exp $

VERSION=		2.5
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p6
SHARED_LIBS=		python2.5 1.0

BROKEN-mips64 = Floating point exception while generating pyc objects

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH:Mmips64*}
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
