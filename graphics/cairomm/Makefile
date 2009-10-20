# $OpenBSD: Makefile,v 1.9 2009/10/20 21:50:40 espie Exp $

COMMENT=		C++ interface for cairo

DISTNAME=		cairomm-1.8.2
PKGNAME=		${DISTNAME}p1
SHARED_LIBS=		cairomm-1.0	3.0 # .5.0
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/cairomm/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		X11 Xau Xdmcp Xrender expat fontconfig freetype glitz \
			m pixman-1 png pthread-stubs xcb z

MASTER_SITES=		http://cairographics.org/releases/

LIB_DEPENDS=		cairo:cairo->=1.2:graphics/cairo \
			sigc-2.0.>=2:libsigc++->=2,<3:devel/libsigc++-2

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
# no documentation (doc dirs are empty)
CONFIGURE_ARGS+=	--disable-docs

.include <bsd.port.mk>
