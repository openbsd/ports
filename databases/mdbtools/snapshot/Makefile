# $OpenBSD: Makefile,v 1.19 2009/06/17 21:24:48 sthen Exp $

COMMENT-main=	read microsoft Access MDB
COMMENT-gmdb=	graphical interface to MDB tools
DATE=		20070603
DISTNAME=	mdbtools-${DATE}
PKGNAME-main=	mdbtools-${DATE}p3
PKGNAME-gmdb=	gmdb-${DATE}p5
HOMEPAGE=	http://mdbtools.sourceforge.net/

CATEGORIES=	databases converters
MASTER_SITES=	ftp://quatramaran.ens.fr/pub/espie/

#MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=mdbtools/}
MULTI_PACKAGES=	-main -gmdb

SHARED_LIBS +=	mdb                  1.0      # .1.0
SHARED_LIBS +=	mdbsql               1.0      # .1.0

# GPLv2+, LGPL v2+
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes

USE_X11=	Yes
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=	gnu

WRKDIST=	${WRKDIR}/mdbtools
BUILD_DEPENDS=	::devel/bison \
		::lang/gawk

LIB_DEPENDS=	glib-2.0::devel/glib2
WANTLIB=	c pcre

MODULES=	devel/gettext


LIB_DEPENDS-gmdb=${LIB_DEPENDS} \
		gnomeui-2::x11/gnome/libgnomeui \
		gio-2.0,gmodule-2.0,gobject-2.0,gthread-2.0::devel/glib2 \
		mdb,mdbsql::databases/mdbtools/snapshot
RUN_DEPENDS-gmdb=${RUN_DEPENDS} \
		:yelp-*:x11/gnome/yelp

WANTLIB-gmdb=	${WANTLIB} \
		ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 cairo crypto dbus-1 \
		dbus-glib-1 expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glade-2.0 glitz \
		gnome-2 gnome-keyring gnomecanvas-2 gnomevfs-2 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pixman-1 png popt pthread ssl util xml2 z avahi-client \
		avahi-common avahi-glib
WANTLIB-main=	${WANTLIB} readline termcap

.include <bsd.port.mk>

