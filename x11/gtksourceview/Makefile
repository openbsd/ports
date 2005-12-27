# $OpenBSD: Makefile,v 1.12 2005/12/27 23:12:23 naddy Exp $

COMMENT=		"Text widget that extends GTK2's GtkTextView widget"
DISTNAME=		gtksourceview-1.2.0
PKGNAME=		${DISTNAME}p2
SHARED_LIBS=		gtksourceview-1.0 1.0
MODGNU_SHARED_LIBS=	gtksourceview-1.0 ''
LIBgtksourceview-1.0_ALIAS=	gtksourceview_1_0
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/gtksourceview	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xext Xrender art_lgpl_2 atk-1.0.0.0 cairo fontconfig \
		freetype gdk-x11-2.0.600.0 gdk_pixbuf-2.0.600.0 \
		glib-2.0.600.0 glitz gmodule-2.0.600.0 gobject-2.0.600.0 \
		gtk-x11-2.0.600.0 m pango-1.0.0.0 pangocairo-1.0.0.0 \
		pangoft2-1.0.0.0 png xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtksourceview/1.2/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomeprint-2-2::x11/gnome/libgnomeprintui

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		${CONFIGURE_SHARED} --disable-build_tests

.include <bsd.port.mk>
