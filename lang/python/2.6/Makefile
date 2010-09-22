# $OpenBSD: Makefile,v 1.19 2010/09/22 13:44:12 jasper Exp $

VERSION =		2.6
PATCHLEVEL =		.6
SHARED_LIBS =		python2.6 1.0

.if ${MACHINE_ARCH} == "alpha" || ${MACHINE_ARCH} == "amd64" || \
    ${MACHINE_ARCH} == "sparc64" || ${MACHINE_ARCH:Mmips64*}
PATCH_LIST =		patch-* sup64-*
.endif

AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS +=	--with-cxx_main

post-extract:
	rm -r ${WRKDIST}/Modules/expat

.include <bsd.port.mk>
