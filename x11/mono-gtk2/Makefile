# $OpenBSD: Makefile,v 1.2 2008/10/16 21:47:54 jasper Exp $

COMMENT=	.NET language binding for the GTK+2 toolkit

MAJOR=		12
MINOR=		0
VERSION=	2.${MAJOR}.${MINOR}

DISTNAME=	gtk-sharp-${VERSION}
PKGNAME=	mono-gtk2-${VERSION}p0
CATEGORIES=	x11

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://ftp.novell.com/pub/mono/sources/gtk-sharp2${MAJOR}/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png xml2 z

MODULES=	devel/gettext lang/mono
LIB_DEPENDS=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0::devel/libglade2 \
		::lang/mono

CONFIGURE_STYLE=gnu
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

DLLMAP_FILES=	atk/atk-sharp.dll.config \
		gdk/gdk-sharp.dll.config \
		glade/glade-sharp.dll.config \
		glib/glib-sharp.dll.config \
		gtk/gtk-sharp.dll.config \
		gtkdotnet/gtk-dotnet.dll.config \
		pango/pango-sharp.dll.config \
		sample/cairo-sample.exe.config

.include <bsd.port.mk>
