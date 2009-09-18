# $OpenBSD: Makefile,v 1.10 2009/09/18 10:25:22 ajacoutot Exp $

COMMENT=		reminder program for prevention of RSI

DISTNAME=		workrave-1.8.5
PKGNAME=		${DISTNAME}p6
CATEGORIES=		productivity x11

HOMEPAGE=		http://www.workrave.org/welcome/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xmu Xrandr \
		Xrender Xt Xtst art_lgpl_2 atk-1.0 atkmm-1.6 \
		bonobo-2 bonobo-activation bonoboui-2 c cairo cairomm-1.0 \
		crypto dbus-1 dbus-glib-1 expat fontconfig freetype \
		gailutil gconf-2 gconfmm-2.6 gdk-x11-2.0 gdk_pixbuf-2.0 \
		gdkmm-2.4 gio-2.0 giomm-2.4 glade-2.0 glademm-2.4 glib-2.0 \
		glibmm-2.4 glitz gmodule-2.0 gnome-2 gnome-keyring \
		gnomecanvas-2 gnomecanvasmm-2.6 gnomemm-2.6 gnomeui-2 \
		gnomevfs-2 gnomevfsmm-2.6 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
		gtkmm-2.4 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pangomm-1.4 pcre pixman-1 png popt pthread sigc-2.0 ssl \
		stdc++ util xml2 z avahi-client avahi-common avahi-glib \
		pthread-stubs xcb

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=workrave/}

LIB_DEPENDS=		gnet-2.0::net/gnet \
			gnomeuimm-2.6::x11/gnome/libgnomeuimm \
			panel-applet-2::x11/gnome/panel

MODULES=		devel/gettext \
			textproc/intltool

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

CFLAGS+=		-DNDEBUG

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

pre-configure:
	perl -pi -e 's|#include <sigc\+\+\/compatibility\.h>||g ; \
		s|SigC::Signal|sigc::signal|g ; \
		s|SigC::slot_class|sigc::mem_fun|g ; \
		s|SigC::Connection|sigc::connection|g ; \
		s|SigC::Slot|sigc::slot|g ; \
		s|SigC::Object|sigc::trackable|g ; \
		s|SigC::slot|sigc::mem_fun|g' \
		${WRKSRC}/frontend/gtkmm/src/*.* \
		${WRKSRC}/frontend/plugin/*/gtkmm/src/*.*

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/workrave/sound/events
	${INSTALL_DATA} ${WRKSRC}/frontend/common/share/sounds/workrave.soundlist \
		${PREFIX}/share/examples/workrave/sound/events

.include <bsd.port.mk>

CONFIGURE_ARGS+=	--sysconfdir="${SYSCONFDIR}/gnome"
