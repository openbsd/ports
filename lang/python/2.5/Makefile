# $OpenBSD: Makefile,v 1.41 2010/10/18 19:20:42 espie Exp $

VERSION=		2.5
PATCHLEVEL=		.4
PKG_PATCHLEVEL=		p6
SHARED_LIBS=		python2.5 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH:Mmips64*}
PATCH_LIST=		patch-* sup64-*
.endif

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main
USE_GROFF =	Yes

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
