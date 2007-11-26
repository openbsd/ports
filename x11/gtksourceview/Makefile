# $OpenBSD: Makefile,v 1.24 2007/11/26 21:01:21 bernd Exp $

COMMENT=		text widget that extends GTK2's GtkTextView widget

MAJOR_VERSION=		2.0
GNOME_PROJECT=		gtksourceview
GNOME_VERSION=		${MAJOR_VERSION}.1
SHARED_LIBS +=	gtksourceview-2.0    0.0      # .0.0
CATEGORIES=		x11

SUBST_VARS=		MAJOR_VERSION

HOMEPAGE=		http://gtksourceview.sourceforge.net/

MAINTAINER=		Thomas Delaet <thomas@delaet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes Xi \
		Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre png z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		xml2:libxml-*:textproc/libxml \
			gtk-x11-2.0,gdk_pixbuf-2.0,gdk-x11-2.0::x11/gtk+2

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
