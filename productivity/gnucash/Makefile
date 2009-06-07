# $OpenBSD: Makefile,v 1.21 2009/06/07 06:41:26 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	personal and small-business financial-accounting software	

GNOME_PROJECT =	gnucash
GNOME_VERSION =	2.2.8
PKGNAME =	${DISTNAME}p1

SHARED_LIBS +=	gnc-backend-file-utils	0.0	# .0.0
SHARED_LIBS +=	gnc-business-ledger	0.0	# .0.0
SHARED_LIBS +=	gnc-core-utils		0.0	# .0.0
SHARED_LIBS +=	gnc-gnome		0.0	# .0.0
SHARED_LIBS +=	gnc-module		0.0	# .0.0
SHARED_LIBS +=	gnc-qof			1.4	# .1.4
SHARED_LIBS +=	gncmod-qif		0.0	# .0.0

CATEGORIES =	productivity

HOMEPAGE =	http://www.gnucash.org/

MAINTAINER =	Nikolay Sturm <sturm@genua.de>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 atk-1.0 bonobo-2 \
		bonobo-activation bonoboui-2 bz2 c cairo crypto dbus-1 \
		dbus-glib-1 enchant expat fontconfig freetype gailutil \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomeui-2 gnomevfs-2 gobject-2.0 gsf-1 gsf-gnome-1 gthread-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png popt pthread ssl stdc++ util xml2 z

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=gnucash/} \
		${HOMEPAGE}pub/gnucash/sources/stable/

MODULES =	devel/gettext \
		x11/gnome \
		devel/gconf2

DESKTOP_FILES =	Yes
MODGCONF2_SCHEMAS_DIR = gnucash

BUILD_DEPENDS =	::devel/slib \
		::devel/slib-guile
RUN_DEPENDS =	::devel/slib \
		::devel/slib-guile \
		::productivity/gnucash-docs
LIB_DEPENDS =	goffice-0.6::devel/goffice \
		guile,guile-ltdl::lang/guile \
		gtkhtml-3.14::www/gtkhtml3

USE_X11 =		Yes
CONFIGURE_STYLE =	gnu
# --disable-ofx until libofx/libsp is fixed to work with .so
CONFIGURE_ARGS +=	${CONFIGURE_SHARED} \
			--disable-doxygen \
			--disable-ofx
CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
