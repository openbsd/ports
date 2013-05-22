# $OpenBSD: Makefile,v 1.62 2013/05/22 13:32:02 fgsch Exp $

VERSION=		2.5
PATCHLEVEL=		.4
REVISION=		21
SHARED_LIBS=		python2.5 1.0
VERSION_SPEC=		>=2.5,<2.6

AUTOCONF_VERSION=	2.61
CONFIGURE_ARGS+=	--with-cxx_main

PATCH_LIST =		patch-* sup64-*

MAKE_FLAGS+=	LDLIBRARY=libpython${VERSION}.so.${LIBpython2.5_VERSION}
MAKE_FLAGS+=	INSTSONAME=libpython${VERSION}.so.${LIBpython2.5_VERSION}

post-patch:
	${SUBST_CMD} ${WRKSRC}/configure.in

.include <bsd.port.mk>
