# $OpenBSD: Makefile,v 1.10 2002/04/17 20:30:46 pvalchev Exp $

COMMENT=	"Gtk bindings for Python"
COMMENT-gnome=	"Gtk and Gnome bindings for Python"

# Version numbers between py-gtk and py-gnome are different, but py-gnome
# overlaps py-gtk. Because of this version number inconsistency, we use
# py-gnome's version number, even for py-gtk.

V=		1.4.2		## For py-gtk, this really is 0.6.9
PKGNAME=	py-Gtk-${V}
DISTNAME=	gnome-python-${V}
CATEGORIES=	x11 devel
NEED_VERSION=	1.504

MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/gnome-python

HOMEPAGE=	http://www.daa.com.au/~james/gnome/

MAINTAINER=	Maurice Nonnekes <maurice@amaze.nl>

PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

FLAVORS=	gnome
FLAVOR?=

LIB_DEPENDS+=	Imlib.19,gdk_imlib::graphics/imlib \
		gtkgl.1.2::x11/gtkglarea \
		gdk_pixbuf::graphics/gdk-pixbuf \
		gthread.1.2::devel/glib

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes

CONFIGURE_STYLE=gnu

PYTHON_VER=	2.1
SUBST_VARS=	PYTHON_VER

CONFIGURE_ENV=	PYTHON=${LOCALBASE}/bin/python${PYTHON_VER}

RUN_DEPENDS+=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
BUILD_DEPENDS+=	${RUN_DEPENDS}

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=	glade-gnome.4,glade::devel/libglade,gnome \
		capplet::x11/gnome/controlcenter \
		gnorba,gtkxmhtml,zvt::x11/gnome/libs \
		panel_applet::x11/gnome/core
.else
PATCH_STRIP=  -p1
PATCH_LIST=   patch-pygtk_configure

LIB_DEPENDS+= glade.4::devel/libglade
WRKDIST=      ${WRKDIR}/${DISTNAME}/pygtk
.endif

.include <bsd.port.mk>
