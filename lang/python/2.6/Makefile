# $OpenBSD: Makefile,v 1.17 2010/07/23 13:56:26 sthen Exp $

VERSION=		2.6
PATCHLEVEL=		.5
SHARED_LIBS=		python2.6 1.0

# PSUBDIR=		python/${VERSION}

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
