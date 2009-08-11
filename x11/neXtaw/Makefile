# $OpenBSD: Makefile,v 1.9 2009/08/11 08:42:08 ajacoutot Exp $

COMMENT=		libXaw widget set replacement

DISTNAME=		neXtaw-0.15.1
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=	neXtaw               15.1     # .15.1
CATEGORIES=		x11 devel

HOMEPAGE=		http://siag.nu/neXtaw/

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		ICE SM X11 Xau Xdmcp Xext Xmu Xt \
			pthread-stubs xcb

MASTER_SITES=		http://siag.nu/pub/neXtaw/

USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED}
CONFIGURE_ENV+=		CPPFLAGS="-I${X11BASE}/include"

.include <bsd.port.mk>
