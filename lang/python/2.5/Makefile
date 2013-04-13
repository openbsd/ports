# $OpenBSD: Makefile,v 1.59 2013/04/13 22:31:42 fgsch Exp $

VERSION=		2.5
PATCHLEVEL=		.4
REVISION=		19
SHARED_LIBS=		python2.5 1.0
VERSION_SPEC=		>=2.5,<2.6

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

PATCH_LIST =		patch-* sup64-*
MAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython2.5_VERSION}
MAKE_FLAGS+=	INSTSONAME=libpython${VERSION}.so.${LIBpython2.5_VERSION}

.include <bsd.port.mk>
