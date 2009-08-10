# $OpenBSD: Makefile,v 1.21 2009/08/10 06:31:07 kili Exp $

COMMENT=	visual administration console for MySQL

DISTNAME=	mysql-gui-tools-5.0r12
PKGNAME=	mysql-administrator-1.2.12p3
CATEGORIES=	databases

HOMEPAGE=	http://www.mysql.com/products/tools/administrator/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_MYSQL:=Downloads/MySQLGUITools/}

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo cairomm-1.0
WANTLIB += crypto expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += giomm-2.4 glibmm-2.4 glitz gtk-x11-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pangomm-1.4 pixman-1 png
WANTLIB += pthread pthread-stubs sigc-2.0 ssl stdc++ util xcb z

MODULES=	devel/gettext
BUILD_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common
RUN_DEPENDS=	:mysql-gui-common->=5:devel/mysql-gui-common \
		:desktop-file-utils-*:devel/desktop-file-utils
LIB_DEPENDS=	pcre::devel/pcre \
		mysqlclient_r::databases/mysql \
		gio-2.0,glib-2.0,gmodule-2.0,gobject-2.0:glib2->=2.6.2:devel/glib2 \
		glade-2.0::devel/libglade2 \
		atkmm-1.6,gdkmm-2.4,gtkmm-2.4::x11/gtk2mm \
		xml2.>=6:libxml->=2.6.2:textproc/libxml

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-administrator

.include <bsd.port.mk>
