# $OpenBSD: Makefile,v 1.28 2009/10/02 13:05:33 ajacoutot Exp $

COMMENT=	visual query tool for MySQL

DISTNAME=	mysql-gui-tools-5.0r12
PKGNAME=	mysql-query-browser-1.2.12p8
CATEGORIES=	databases

HOMEPAGE=	http://www.mysql.com/products/tools/query-browser/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_MYSQL:=Downloads/MySQLGUITools/}

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender atk-1.0 bonobo-2
WANTLIB += bonobo-activation c cairo cairomm-1.0 crypto dbus-1
WANTLIB += expat fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 giomm-2.4 glib-2.0 glibmm-2.4 glitz gmodule-2.0
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pcre pixman-1
WANTLIB += png popt pthread pthread-stubs sigc-2.0 ssl stdc++
WANTLIB += xcb xml2 z

MODULES=	devel/gettext \
		textproc/intltool
BUILD_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common \
		::x11/gnome/libgnomeprintui # ${WRKSRC}/source/linux/gtksourceview
RUN_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gtkmm-2.4,atkmm-1.6,gdkmm-2.4::x11/gtk2mm \
		enchant.>=5::textproc/enchant \
		mysqlclient_r::databases/mysql \
		gtkhtml-3.14:gtkhtml3->=3.14:www/gtkhtml3 \
		gnome-2.>=2400::x11/gnome/libgnome \
		glade-2.0.>=1::devel/libglade2

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking \
		--with-gtkhtml=libgtkhtml-3.14
CONFIGURE_ENV+=	CPPFLAGS="-I${LOCALBASE}/include \
		`pkg-config --cflags libgnome-2.0`"
CONFIGURE_ENV+= LDFLAGS="-L${LOCALBASE}/lib \
		`pkg-config --libs libgnome-2.0`"
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} \
			 ${WRKSRC}/source/linux/gtksourceview

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-query-browser

.include <bsd.port.mk>
