# $OpenBSD: Makefile,v 1.9 2006/09/18 11:59:59 espie Exp $

COMMENT=	"simple network library"
DISTNAME=	gnet-2.0.4
SHARED_LIBS=	gnet-2.0	0.4
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

BUILD_DEPENDS=	:pkgconfig->=0.9.0:devel/pkgconfig

LIB_DEPENDS=	glib-2.0,gthread-2.0::devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
	--enable-threadsafe-getaddrinfo --enable-threadsafe-gethostbyname

.include <bsd.port.mk>
