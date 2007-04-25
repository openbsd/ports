# $OpenBSD: Makefile,v 1.13 2007/04/25 10:48:35 wilfried Exp $

COMMENT=	"visual administration console for MySQL"

DISTNAME=	mysql-gui-tools-5.0r11
PKGNAME=	mysql-administrator-1.2.11
CATEGORIES=	databases

HOMEPAGE=	http://www.mysql.com/products/tools/administrator/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://mysql.serenitynet.com/Downloads/MySQLGUITools/

WANTLIB=	X11 Xau Xcursor Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		c cairo cairomm-1.0 crypto expat fontconfig freetype atk-1.0 \
		atkmm-1.6 gdk-x11-2.0 gdk_pixbuf-2.0 gdkmm-2.4 glibmm-2.4 \
		glitz gtk-x11-2.0 m pango-1.0 pangomm-1.4.>=1.0 pangoft2-1.0 \
		pangocairo-1.0 png pthread sigc-2.0 ssl stdc++ util z

MODULES=	devel/gettext
BUILD_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common
RUN_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common
LIB_DEPENDS=	pcre::devel/pcre \
		mysqlclient_r::databases/mysql \
		glib-2.0,gmodule-2.0,gobject-2.0:glib2->=2.6.2:devel/glib2 \
		glade-2.0::devel/libglade2 \
		gtkmm-2.4::x11/gtk2mm \
		xml2.>=6:libxml->=2.6.2:textproc/libxml

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-administrator

.include <bsd.port.mk>
