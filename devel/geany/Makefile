# $OpenBSD: Makefile,v 1.43 2014/07/11 12:59:55 landry Exp $

SHARED_ONLY=	Yes

COMMENT=	small and lightweight IDE

DISTNAME =	geany-1.24.1

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

WANTLIB =	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 c cairo expat ffi fontconfig \
		freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 \
		harfbuzz m pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs \
		stdc++ xcb xcb-render xcb-shm z

LIB_DEPENDS=	x11/gtk+2
RUN_DEPENDS=	devel/desktop-file-utils \
		devel/vte \
		x11/gtk+2,-guic

LIBTOOL_FLAGS =	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	rm -f ${PREFIX}/lib/geany/*.la

.include <bsd.port.mk>
