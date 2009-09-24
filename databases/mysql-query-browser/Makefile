# $OpenBSD: Makefile,v 1.27 2009/09/24 18:23:43 ajacoutot Exp $

COMMENT=	visual query tool for MySQL

DISTNAME=	mysql-gui-tools-5.0r12
PKGNAME=	mysql-query-browser-1.2.12p7
CATEGORIES=	databases

HOMEPAGE=	http://www.mysql.com/products/tools/query-browser/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_MYSQL:=Downloads/MySQLGUITools/}

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation\
		bonoboui-2 c cairo cairomm-1.0 crypto dbus-1 expat \
		fontconfig freetype gailutil gconf-2 gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 giomm-2.4 glade-2.0 glib-2.0 \
		glibmm-2.4 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pangomm-1.4 pcre pixman-1 png popt pthread \
		pthread-stubs sigc-2.0 ssl stdc++ xcb xml2 z

MODULES=	devel/gettext \
		textproc/intltool
BUILD_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common \
		::x11/gnome/libgnomeprintui # ${WRKSRC}/source/linux/gtksourceview
RUN_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	gtkmm-2.4,atkmm-1.6,gdkmm-2.4::x11/gtk2mm \
		gnomeui-2.>=2400::x11/gnome/libgnomeui \
		enchant.>=5::textproc/enchant \
		mysqlclient_r::databases/mysql \
		gtkhtml-3.14:gtkhtml3->=3.14:www/gtkhtml3

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking \
		--with-gtkhtml=libgtkhtml-3.14
CONFIGURE_ENV+= CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ENV+= LDFLAGS=-L${LOCALBASE}/lib
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} \
			 ${WRKSRC}/source/linux/gtksourceview

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-query-browser

.include <bsd.port.mk>
