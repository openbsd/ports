# $OpenBSD: Makefile,v 1.58 2011/09/20 21:11:27 ajacoutot Exp $

COMMENT=		library for layout and rendering of text

V=			1.29.3
DISTNAME=		pango-${V}

SHARED_LIBS +=  pango-1.0            2903.0   # 2903.0
SHARED_LIBS +=  pangox-1.0           2903.0   # 2903.0
SHARED_LIBS +=  pangoft2-1.0         2903.0   # 2903.0
SHARED_LIBS +=  pangoxft-1.0         2903.0   # 2903.0
SHARED_LIBS +=  pangocairo-1.0       2903.0   # 2903.0

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
WANTLIB += png pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/pango/${V:C/^([0-9]+\.[0-9]+).*/\1/}/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		devel/gobject-introspection

LIB_DEPENDS=		devel/glib2>=2.29.92 \
			graphics/cairo

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_GROFF =		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-gtk-doc \
			--enable-introspection
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

FAKE_FLAGS=		aliasdir=${PREFIX}/share/examples/pango \
			sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
