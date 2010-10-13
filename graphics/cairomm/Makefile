# $OpenBSD: Makefile,v 1.12 2010/10/13 14:23:11 naddy Exp $

COMMENT=		C++ interface for cairo

DISTNAME=		cairomm-1.9.2
REVISION=		0
SHARED_LIBS=		cairomm-1.0	4.0 # .5.0
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/cairomm/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xrender \
			Xxf86vm drm cairo expat fontconfig freetype glib-2.0 \
			gobject-2.0 gthread-2.0 m pixman-1 pcre png \
			pthread-stubs sigc-2.0 stdc++ xcb xcb-render xcb-shm z

MASTER_SITES=		http://cairographics.org/releases/

LIB_DEPENDS=		::graphics/cairo \
			:libsigc++->=2:devel/libsigc++-2

MODULES=		devel/gettext

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
