# $OpenBSD: Makefile,v 1.18 2006/08/01 22:55:52 espie Exp $

COMMENT=		"free user interface builder for GTK+ and GNOME"

DISTNAME=		glade-0.6.4
PKGNAME=		${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://glade.gnome.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glade/0.6/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		gtk.>=1.2,gdk.>=1.2::x11/gtk+
BUILD_DEPENDS=		:scrollkeeper->=0.3.12:textproc/scrollkeeper
RUN_DEPENDS=		:automake->=1.4:devel/automake/1.4 \
			:autoconf->=2.13:devel/autoconf/2.13 \
			::devel/metaauto \
			:scrollkeeper->=0.3.12:textproc/scrollkeeper

FLAVORS=		gnome
FLAVOR?=

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	--without-bonobo
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

WANTLIB=		X11 Xext Xi c glib gmodule iconv intl m
.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.>=36,art_lgpl.>=4,gnomesupport,gnomeui.>=46::x11/gnome/libs
WANTLIB+=		ICE SM audiofile esd gdk_imlib jpeg png tiff ungif z
WANTLIB+=		
.else
CONFIGURE_ARGS+=	--disable-gnome
.endif

.include <bsd.port.mk>
