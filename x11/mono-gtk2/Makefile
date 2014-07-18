# $OpenBSD: Makefile,v 1.19 2014/07/18 13:44:30 ajacoutot Exp $

COMMENT=	.NET language binding for the GTK+2 toolkit

MAJOR=		12
MINOR=		10
VERSION=	2.${MAJOR}.${MINOR}

DISTNAME=	gtk-sharp-${VERSION}
PKGNAME=	mono-gtk2-${VERSION}

REVISION=	6

CATEGORIES=	x11

HOMEPAGE=	http://mono-project.com/GtkSharp

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://origin-download.mono-project.com/sources/gtk-sharp2${MAJOR}/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xml2 z \
		pthread-stubs xcb gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 \
		glade-2.0

MODULES=	devel/gettext \
		lang/mono
LIB_DEPENDS=	x11/gtk+2 \
		devel/libglade2

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=	atk/atk-sharp.dll.config \
		gdk/gdk-sharp.dll.config \
		glade/glade-sharp.dll.config \
		glib/glib-sharp.dll.config \
		gtk/gtk-sharp.dll.config \
		gtkdotnet/gtk-dotnet.dll.config \
		pango/pango-sharp.dll.config

.include <bsd.port.mk>
