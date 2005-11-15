# $OpenBSD: Makefile,v 1.11 2005/11/15 22:05:09 wilfried Exp $

COMMENT=		"Text widget that extends GTK2's GtkTextView widget"
DISTNAME=		gtksourceview-1.2.0
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/gtksourceview	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 art_lgpl_2 atk-1.0.0.0 cairo fontconfig freetype \
		gdk-x11-2.0.600.0 gdk_pixbuf-2.0.600.0 glib-2.0.600.0 \
		gmodule-2.0.600.0 gobject-2.0.600.0 gtk-x11-2.0.600.0 m \
		pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtksourceview/1.2/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomeprint-2-2::x11/gnome/libgnomeprintui

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-build_tests

MAKE_FLAGS=		libgtksourceview_1_0_la_LDFLAGS="-version-info 1:0:0"

.include <bsd.port.mk>
