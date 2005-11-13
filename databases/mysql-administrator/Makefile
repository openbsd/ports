# $OpenBSD: Makefile,v 1.2 2005/11/13 20:01:18 wilfried Exp $

COMMENT=	"visual administration console for MySQL"

DISTNAME=	mysql-administrator-1.1.4
PKGNAME=	${DISTNAME}p0
CATEGORIES=	databases

HOMEPAGE=	http://www.mysql.com/products/tools/administrator/

MAINTAINER=	Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://na.mirror.garr.it/mirrors/MySQL/Downloads/MySQLAdministrationSuite/ \
		ftp://ftp.sunet.se/pub/unix/databases/relational/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://sunsite.dk/mirrors/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://gd.tuwien.ac.at/db/mysql/Downloads/MySQLAdministrationSuite/ \
		ftp://mysql.secsup.org/pub/software/mysql/Downloads/MySQLAdministrationSuite/

WANTLIB=	X11 c crypto fontconfig freetype m pthread ssl stdc++ z atk-1.0.0.0 \
		atkmm-1.6.0.0 cairo gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gdkmm-2.4.0.0 \
		glibmm-2.4.0.0 gtk-x11-2.0.0.0 pango-1.0.0.0 pangomm-1.4.1.0 \
		pangoft2-1.0.0.0 pangocairo-1.0.0.0 sigc-2.0.0.0

MODULES=	devel/gettext
BUILD_DEPENDS=	:pkgconfig-*:devel/pkgconfig \
		::devel/mysql-gui-common
RUN_DEPENDS=	::devel/mysql-gui-common
LIB_DEPENDS=	pcre::devel/pcre \
		mysqlclient_r::databases/mysql \
		glib-2.0.0.0,gmodule-2.0.0.0,gobject-2.0.0.0:glib2->=2.6.2:devel/glib2 \
		glade-2.0.0.0::devel/libglade2 \
		gtkmm-2.4.0.0::x11/gtk2mm \
		xml2.6:libxml->=2.6.2:textproc/libxml

USE_X11=	Yes
USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED} \
		--disable-dependency-tracking

WRKDIST=	${WRKDIR}/${DISTNAME}/mysql-administrator

post-extract:
	@rm -rf ${WRKSRC}/../mysql-gui-common

.include <bsd.port.mk>
