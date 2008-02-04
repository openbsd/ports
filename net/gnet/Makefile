# $OpenBSD: Makefile,v 1.14 2008/02/04 18:01:47 jasper Exp $

COMMENT=	simple network library

GNOME_PROJECT=	gnet
GNOME_VERSION=	2.0.8
SHARED_LIBS +=  gnet-2.0             1.0      # .8.0
CATEGORIES=	net

HOMEPAGE=	http://www.gnetlibrary.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	glib-2.0,gthread-2.0::devel/glib2

WANTLIB=	pcre

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-threadsafe-getaddrinfo \
		--enable-threadsafe-gethostbyname

REGRESS_FLAGS=	CFLAGS="${CFLAGS} -L${WRKBUILD}/src/.libs \
		-D_internal_test" LIBTOOL=${LOCALBASE}/bin/libtool

.include <bsd.port.mk>
