# $OpenBSD: Makefile,v 1.38 2014/04/02 09:36:10 jasper Exp $

COMMENT-main=		read microsoft Access MDB
COMMENT-gmdb=		graphical interface to MDB tools

DATE=			20070603
DISTNAME=		mdbtools-${DATE}
PKGNAME-main=		mdbtools-${DATE}
PKGNAME-gmdb=		gmdb-${DATE}

REVISION-main=		9
REVISION-gmdb=		15

CATEGORIES=		databases converters
HOMEPAGE=		http://mdbtools.sourceforge.net/
MASTER_SITES=		ftp://quatramaran.ens.fr/pub/espie/

# https://github.com/brianb/mdbtools
#MASTER_SITES=${MASTER_SITE_SOURCEFORGE:=mdbtools/}
MULTI_PACKAGES= 	-main -gmdb

SHARED_LIBS +=  mdb                  1.0      # 1.0
SHARED_LIBS +=  mdbsql               1.0      # 1.0

# GPLv2+, LGPL v2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pcre glib-2.0 pthread

WANTLIB-main += ${WANTLIB} readline termcap

WANTLIB-gmdb += ${WANTLIB}
WANTLIB-gmdb += ICE ORBit-2 ORBitCosNaming-2 SM X11 Xcomposite Xcursor
WANTLIB-gmdb += Xdamage Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2
WANTLIB-gmdb += atk-1.0 bonobo-2 bonobo-activation bonoboui-2 cairo
WANTLIB-gmdb += canberra crypto dbus-1 dbus-glib-1 expat ffi fontconfig
WANTLIB-gmdb += freetype gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-gmdb += gio-2.0 glade-2.0 gmodule-2.0 gnome-2 gnome-keyring
WANTLIB-gmdb += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gpg-error
WANTLIB-gmdb += graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz ltdl m mdb
WANTLIB-gmdb += mdbsql ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB-gmdb += png popt pthread-stubs ssl util vorbis vorbisfile xcb
WANTLIB-gmdb += xcb-render xcb-shm xml2 z

MODULES=		devel/gettext \
			x11/gnome

MODGNOME_TOOLS +=	yelp

WRKDIST=		${WRKDIR}/mdbtools

BUILD_DEPENDS=		devel/bison \
			lang/gawk

LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/glib2

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS}

LIB_DEPENDS-gmdb=	${LIB_DEPENDS} \
			x11/gnome/libgnomeui \
			devel/glib2 \
			databases/mdbtools/snapshot

CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
