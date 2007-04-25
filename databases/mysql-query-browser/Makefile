# $OpenBSD: Makefile,v 1.13 2007/04/25 10:49:20 wilfried Exp $

COMMENT=	"visual query tool for MySQL"

DISTNAME=	mysql-gui-tools-5.0r11
PKGNAME=	mysql-query-browser-1.2.11
CATEGORIES=	databases

HOMEPAGE=	http://www.mysql.com/products/tools/query-browser/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mysql.serenitynet.com/Downloads/MySQLGUITools/

WANTLIB=	ICE ORBit-2 SM X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender art_lgpl_2 atk-1.0 atkmm-1.6 bonobo-2 \
		bonobo-activation bonoboui-2 c cairo cairomm-1.0 crypto expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gdkmm-2.4 glibmm-2.4 glitz gnome-2 gnomecanvas-2 \
		gnomeprint-2-2.>=1.0 gnomeprintui-2-2.>=1.0 gnomeui-2 \
		gnomevfs-2 gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pangomm-1.4 png popt pthread sigc-2.0 ssl stdc++ z

MODULES=	devel/gettext
BUILD_DEPENDS=	::textproc/p5-XML-Parser \
		:mysql-gui-common->=5:devel/mysql-gui-common
RUN_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common
LIB_DEPENDS=	pcre::devel/pcre \
		mysqlclient_r::databases/mysql \
		glib-2.0,gmodule-2.0,gobject-2.0,gthread-2.0:glib2->=2.6.2:devel/glib2 \
		glade-2.0::devel/libglade2 \
		gtkmm-2.4::x11/gtk2mm \
		xml2.>=6:libxml->=2.6.2:textproc/libxml \
		gtkhtml-3.6:gtkhtml3-3.6.*:www/gtkhtml3

USE_X11=	Yes
USE_GMAKE=	Yes
USE_LIBTOOL=	Yes
AUTOCONF_VERSION=2.59
CONFIGURE_STYLE=autoconf
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking \
		 --with-gtkhtml=libgtkhtml-3.6
CONFIGURE_ENV+= CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ENV+= LDFLAGS=-L${LOCALBASE}/lib
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC} \
			 ${WRKSRC}/source/linux/gtksourceview

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-query-browser

.include <bsd.port.mk>
