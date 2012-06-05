# $OpenBSD: Makefile,v 1.64 2012/06/05 12:45:20 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		library for layout and rendering of text

GNOME_VERSION=		1.30.1
GNOME_PROJECT=		pango

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

SHARED_LIBS +=  pango-1.0            2905.0   # 2905.0
SHARED_LIBS +=  pangox-1.0           2905.0   # 2905.0
SHARED_LIBS +=  pangoft2-1.0         2905.0   # 2905.0
SHARED_LIBS +=  pangoxft-1.0         2905.0   # 2905.0
SHARED_LIBS +=  pangocairo-1.0       2905.0   # 2905.0

CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtk.org/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xdamage Xdmcp Xext Xfixes Xft Xrender Xxf86vm
WANTLIB += c cairo drm expat ffi fontconfig freetype glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pcre pixman-1
WANTLIB += png pthread pthread-stubs stdc++ xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS=		goi
MODGNOME_CPPFLAGS=	-I${X11BASE}/include

LIB_DEPENDS=		devel/glib2>=2.31.20 \
			graphics/cairo

LIBTOOL_FLAGS=		--tag=disable-static

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-static

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

post-install:
	rm ${PREFIX}/lib/pango/1.6.0/modules/*.la

.include <bsd.port.mk>
