# $OpenBSD: Makefile,v 1.9 2002/05/13 18:50:39 espie Exp $

COMMENT=		"free user interface builder for GTK+ and GNOME"

DISTNAME=		glade-0.6.4
CATEGORIES=		devel
NEED_VERSION=   	1.504
HOMEPAGE=		http://glade.gnome.org/

MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/glade/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:automake->=1.4:devel/automake \
			:autoconf->=2.13:devel/autoconf \
			:scrollkeeper-*:textproc/scrollkeeper

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

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.36,art_lgpl.4,gnomesupport.0,gnomeui.46::x11/gnome/libs
.else
CONFIGURE_ARGS+=	--disable-gnome
.endif

.include <bsd.port.mk>
