# $OpenBSD: Makefile,v 1.22 2007/05/07 09:13:48 jasper Exp $

COMMENT=		"text widget that extends GTK2's GtkTextView widget"
DISTNAME=		gtksourceview-1.8.5
SHARED_LIBS +=	gtksourceview-1.0    1.1      # .0.0
CATEGORIES=		x11

HOMEPAGE=		http://gtksourceview.sourceforge.net/

MAINTAINER=		Thomas Delaet <thomas@delaet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 cairo expat fontconfig freetype \
		glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtksourceview/1.8/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		xml2:libxml-*:textproc/libxml \
			gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2 \
			gnomeprint-2-2::x11/gnome/libgnomeprint

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--disable-build-tests \
			--disable-gtk-doc
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
