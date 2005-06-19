# $OpenBSD: Makefile,v 1.9 2005/06/19 17:59:37 marcm Exp $

COMMENT=		"Text widget that extends GTK2's GtkTextView widget"
DISTNAME=		gtksourceview-1.2.0
#PKGNAME=		${DISTNAME}p0
CATEGORIES=		x11

HOMEPAGE=		http://www.gnome.org/softwaremap/projects/gtksourceview	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		m gtk-x11-2.0.600.0 xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtksourceview/1.2/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		converters/libiconv

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		gnomeprint-2-2::x11/gnome/libgnomeprintui

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--disable-build_tests

MAKE_FLAGS=		libgtksourceview_1_0_la_LDFLAGS="-version-info 1:0:0"

.include <bsd.port.mk>
