# $OpenBSD: Makefile,v 1.1.1.1 2012/08/04 14:59:04 ajacoutot Exp $

COMMENT=	GTK+ support library for colord

DISTNAME=	colord-gtk-0.1.22
EXTRACT_SUFX=	.tar.xz

SHARED_LIBS +=  colord-gtk           0.0      # 1.0

CATEGORIES=	graphics print

HOMEPAGE=	http://www.freedesktop.org/software/colord/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo cairo-gobject
WANTLIB += colord drm expat ffi fontconfig freetype gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-3 lcms2 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MASTER_SITES=	http://www.freedesktop.org/software/colord/releases/

MODULES=	devel/gettext \
		textproc/intltool

BUILD_DEPENDS=	lang/vala \
		devel/gobject-introspection

LIB_DEPENDS=	graphics/colord>=0.1.22 \
		x11/gtk+3

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-introspection \
		--disable-gtk-doc

pre-configure:
	perl -pi -e 's,-Wclobbered,,g;' \
		-e 's,-Wempty-body,,g;' \
		-e 's,-Wignored-qualifiers,,g;' \
		-e 's,-Wtype-limits,,g;' \
		-e 's,-Wmissing-parameter-type,,g' \
		${WRKSRC}/configure

.include <bsd.port.mk>
