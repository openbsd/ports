# $OpenBSD: Makefile,v 1.5 2004/02/25 01:35:50 naddy Exp $

COMMENT=	"simple network library"
DISTNAME=	gnet-2.0.4
CATEGORIES=	net
MASTER_SITES=	${HOMEPAGE}src/

HOMEPAGE=	http://www.gnetlibrary.org/

# LGPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	gettext

BUILD_DEPENDS=	:pkgconfig->=0.9.0:devel/pkgconfig

LIB_DEPENDS=	glib-2.0.0.0,gthread-2.0.0.0::devel/glib2

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
	--enable-threadsafe-getaddrinfo --enable-threadsafe-gethostbyname

.include <bsd.port.mk>
