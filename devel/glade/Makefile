# $OpenBSD: Makefile,v 1.13 2002/12/03 22:45:32 pvalchev Exp $

COMMENT=		"free user interface builder for GTK+ and GNOME"

DISTNAME=		glade-0.6.4
CATEGORIES=		devel

HOMEPAGE=		http://glade.gnome.org/
MAINTAINER=		Jim Geovedi <jim@corebsd.or.id>

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/glade/0.6/}
EXTRACT_SUFX=		.tar.bz2

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
BUILD_DEPENDS=		:scrollkeeper->=0.3.11:textproc/scrollkeeper
RUN_DEPENDS=		:automake->=1.4:devel/automake \
			:autoconf->=2.13:devel/autoconf \
			:scrollkeeper->=0.3.11:textproc/scrollkeeper

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
