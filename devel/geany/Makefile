# $OpenBSD: Makefile,v 1.39 2013/03/21 08:45:15 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	small and lightweight IDE

DISTNAME=	geany-0.20
REVISION =	5

CATEGORIES=	devel

HOMEPAGE=	http://www.geany.org/

MAINTAINER=	Jonathan Armani <armani@openbsd.org>

# GPL + Scintilla License
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.geany.org/
EXTRACT_SUFX=	.tar.bz2

MODULES=	devel/gettext \
		textproc/intltool

USE_GMAKE=	Yes
USE_GROFF =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 c cairo
WANTLIB += drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs stdc++ xcb
WANTLIB += xcb-render xcb-shm z ffi

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/vte \
		x11/gtk+2,-guic

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--enable-static

pre-configure:
	@perl -pi -e 's:\@GMSGFMT\@:${LOCALBASE}/bin/msgfmt:' \
		${WRKSRC}/po/Makefile.in.in

.include <bsd.port.mk>
