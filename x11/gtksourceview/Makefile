# $OpenBSD: Makefile,v 1.4 2004/10/07 21:33:30 sturm Exp $

COMMENT=		"Text widget that extends GTK2's GtkTextView widget"
DISTNAME=		gtksourceview-1.0.1	
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/gtksourceview	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtksourceview/1.0/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			gnomevfs-2::x11/gnome/vfs2 \
			gtk-x11-2.0.400.0,gdk-x11-2.0.400.0,gdk_pixbuf-2.0.400.0::x11/gtk+2
			
USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
