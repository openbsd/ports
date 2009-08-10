# $OpenBSD: Makefile,v 1.10 2009/08/10 06:34:30 kili Exp $

COMMENT=		send small notifications to your desktop

DISTNAME=		notification-daemon-0.4.0
PKGNAME=		${DISTNAME}p5
CATEGORIES=		sysutils net

HOMEPAGE=		http://www.galago-project.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 SM X11 XRes Xau Xcomposite Xcursor Xdamage \
		Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c \
		cairo dbus-1 dbus-glib-1 expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
		gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 m \
		pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 \
		png pthread pthread-stubs startup-notification-1 xcb xml2 z

MASTER_SITES=		${HOMEPAGE}/files/releases/source/notification-daemon/
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext \
			textproc/intltool \
			devel/gconf2

LIB_DEPENDS=		notify.>=2::devel/libnotify \
			glade-2.0.>=1::devel/libglade2 \
			gstreamer-0.10::multimedia/gstreamer-0.10/core \
			wnck-1::devel/libwnck \
			sexy::x11/libsexy
RUN_DEPENDS=		:desktop-file-utils-*:devel/desktop-file-utils \
			:gstreamer-confelements-*:multimedia/gstreamer-0.10/plugins-good,-gconf

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	notification-daemon

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-dbus-sys="${SYSCONFDIR}/dbus-1/system.d" \
			--enable-sound=gstreamer
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
