# $OpenBSD: Makefile,v 1.3 2006/01/17 12:49:18 steven Exp $

COMMENT=	"visual query tool for MySQL"

DISTNAME=	mysql-query-browser-1.1.17
PKGNAME=	${DISTNAME}p1
CATEGORIES=	databases

HOMEPAGE=	http://www.mysql.com/products/tools/query-browser/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://sunsite.dk/mirrors/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://gd.tuwien.ac.at/db/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://mysql.secsup.org/pub/software/mysql/Downloads/MySQLAdministrationSuite/

WANTLIB=	ICE SM X11 Xext Xft Xrender c crypto fontconfig freetype m \
		pthread ssl stdc++ z \
		ORBit-2 art_lgpl_2 atk-1.0.0.0 atkmm-1.6.0.0 bonobo-2 \
		bonobo-activation bonoboui-2 gconf-2 gdk-x11-2.0.0.0 \
		gdk_pixbuf-2.0.0.0 gdkmm-2.4.0.0 glade-2.0.0.0 glibmm-2.4.0.0 \
		gnome-2 gnomecanvas-2 gnomeprint-2-2.1.0 \
		gnomeprintui-2-2.1.0 gnomeui-2 gnomevfs-2 gtk-x11-2.0.0.0 \
		pango-1.0.0.0 pangox-1.0.0.0 pangoft2-1.0.0.0 \
		pangoxft-1.0.0.0 pangomm-1.4.0.0 popt sigc-2.0.0.0

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::devel/mysql-gui-common
RUN_DEPENDS=	::devel/mysql-gui-common
LIB_DEPENDS=	pcre::devel/pcre \
		mysqlclient_r::databases/mysql \
		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0,gthread-2.0.0.0:glib2->=2.6.2:devel/glib2 \
		gtkmm-2.4.0.0::x11/gtk2mm \
		xml2.6:libxml->=2.6.2:textproc/libxml \
		gtkhtml-3.6.0.0:gtkhtml3-3.6.*:www/gtkhtml3

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking \
		 --with-gtkhtml=libgtkhtml-3.6
CONFIGURE_ENV+= CPPFLAGS=-I${LOCALBASE}/include
CONFIGURE_ENV+= LDFLAGS=-L${LOCALBASE}/lib

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-query-browser

post-extract:
	@rm -rf ${WRKSRC}/../mysql-gui-common

.include <bsd.port.mk>
