# $OpenBSD: Makefile,v 1.28 2010/10/11 08:09:44 eric Exp $

COMMENT=		vector graphics library

DISTNAME=		cairo-1.10.0
SHARED_LIBS=		cairo 10.0
SHARED_LIBS+=		cairo-trace 0.0
SHARED_LIBS+=		cairo-gobject 0.0
SHARED_LIBS+=		cairo-script-interpreter 0.0
CATEGORIES=		graphics

HOMEPAGE=		http://cairographics.org/introduction

MAINTAINER=		Eric Faurot <eric@openbsd.org>

WANTLIB=		GL X11 X11-xcb Xau Xdamage Xdmcp Xext Xfixes Xrender \
			Xxf86vm drm expat fontconfig freetype glib-2.0 \
			gobject-2.0 gthread-2.0 m pcre pixman-1 png \
			pthread-stubs xcb xcb-render xcb-shm z

# LGPLv2.1 / MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://cairographics.org/releases/

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		::graphics/png \
			::devel/glib2

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		PTHREAD_LIBS="-pthread"
CONFIGURE_ARGS=		--enable-gl \
			--enable-xml \
			--enable-xcb \
			--enable-xlib-xcb \
			--disable-silent-rules


REGRESS_DEPENDS=	:ghostscript-*:print/ghostscript/gnu

.include <bsd.port.mk>
