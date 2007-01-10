# $OpenBSD: Makefile,v 1.11 2007/01/10 12:06:57 ajacoutot Exp $

COMMENT=	"simple network library"
DISTNAME=	gnet-2.0.7
SHARED_LIBS=	gnet-2.0	0.5
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}src/

HOMEPAGE=	http://www.gnetlibrary.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

USE_LIBTOOL=	Yes

MODULES=	devel/gettext

LIB_DEPENDS=	glib-2.0,gthread-2.0::devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
	--enable-threadsafe-getaddrinfo --enable-threadsafe-gethostbyname

REGRESS_FLAGS=	CFLAGS="${CFLAGS} -L${WRKBUILD}/src/.libs \
		-D_internal_test" LIBTOOL=${LOCALBASE}/bin/libtool

.include <bsd.port.mk>
