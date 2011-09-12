# $OpenBSD: Makefile,v 1.22 2011/09/12 08:44:56 jasper Exp $

BROKEN= 		needs an update

COMMENT=		avant window navigator

V=			0.3.2
DISTNAME=		avant-window-navigator-$V
REVISION=		13

SHARED_LIBS +=	awn                  0.0      # .0.1

CATEGORIES=		x11

HOMEPAGE=		https://launchpad.net/awn

# GPLv2/LGPLv2.1
# Images: CC Attribution Share-Alike 3.0 (unported) license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/0.2/$V/+download/

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool \
			devel/gconf2

WANTLIB += GL ORBit-2 ORBitCosNaming-2 X11 X11-xcb XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender Xxf86vm atk-1.0 bonobo-2 bonobo-activation
WANTLIB += c cairo canberra crypto dbus-1 dbus-glib-1 drm execinfo
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gnome-2 gnome-desktop-2
WANTLIB += gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 ltdl
WANTLIB += m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png popt pthread pthread-stubs ssl startup-notification-1
WANTLIB += util vorbis vorbisfile wnck-1 xcb xcb-aux xcb-render
WANTLIB += xcb-shm xml2 z
WANTLIB += ${MODPY_WANTLIB}

BUILD_DEPENDS=		devel/py-xdg \
			x11/py-gtk2
RUN_DEPENDS=		devel/desktop-file-utils \
			devel/py-xdg \
			x11/py-gtk2
LIB_DEPENDS=		devel/libwnck \
			x11/gnome/desktop \
			x11/gnome/libgnome \
			${MODPY_LIB_DEPENDS}

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
MODGCONF2_SCHEMAS_DIR=	awn

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-desktop="gnome" \
			--with-gconf \
			--without-vala
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm -pthread -lutil"

FAKE_FLAGS+=		itlocaledir=${PREFIX}/share/locale/

pre-configure:
	${SUBST_CMD} ${WRKSRC}/awn-applet-activation/main.c \
			${WRKSRC}/awn-manager/awn-launcher-editor.in \
			${WRKSRC}/awn-manager/awnManager.py.in \
			${WRKSRC}/data/awn-applets-migration \
			${WRKSRC}/data/awn-autostart \
			${WRKSRC}/data/awn-schema-to-gconf

.include <bsd.port.mk>
