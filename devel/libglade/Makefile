# $OpenBSD: Makefile,v 1.20 2006/08/01 22:55:52 espie Exp $

COMMENT=		"library for loading GLADE interface files at runtime"

DISTNAME=		libglade-0.17
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		glade		5.0 \
			glade-gnome	5.0
MODGNU_SHARED_LIBS=	glade		'' \
			glade-gnome	''
LIBglade-gnome_ALIAS=	glade_gnome

CATEGORIES=		devel

HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/libglade/0.17/}

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext Xi glib gmodule m z

FLAVORS=		gnome
FLAVOR?=

MODULES=		devel/gettext
LIB_DEPENDS=		xml.>=9::textproc/libxml1 \
			gtk.>=1.2,gdk.>=1.2::x11/gtk+

SEPARATE_BUILD=		concurrent
USE_X11=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--disable-gnomedb
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.>=36,art_lgpl,gnomesupport,gnomeui::x11/gnome/libs
WANTLIB+=		ICE SM audiofile esd gdk_imlib jpeg png tiff ungif
CONFIGURE_ARGS+=	--with-gnome
PKGNAME=		${DISTNAME}p1
.else
CONFIGURE_ARGS+=	--without-gnome
.endif

.include <bsd.port.mk>
