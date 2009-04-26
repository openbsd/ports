# $OpenBSD: Makefile,v 1.3 2009/04/26 11:01:05 ajacoutot Exp $

COMMENT=		avant window navigator

V=			0.3.2
DISTNAME=		avant-window-navigator-$V
PKGNAME=		${DISTNAME}p0
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
			textproc/intltool

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender art_lgpl_2 atk-1.0 bonobo-2 bonobo-activation
WANTLIB += bonoboui-2 c cairo crypto dbus-1 dbus-glib-1 expat
WANTLIB += fontconfig freetype gailutil gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring
WANTLIB += gnomecanvas-2 gnomeui-2 gnomevfs-2 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png popt pthread ssl startup-notification-1
WANTLIB += util xml2 z

BUILD_DEPENDS=		::devel/py-xdg \
			::x11/py-gtk2
RUN_DEPENDS=		::devel/desktop-file-utils \
			::devel/py-xdg \
			::x11/py-gtk2
LIB_DEPENDS=		gconf-2::devel/gconf2 \
			wnck-1::devel/libwnck \
			gnome-desktop-2::x11/gnome/desktop \
			${MODPY_LIB_DEPENDS}

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_X11=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-desktop="gnome" \
			--with-gconf \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/awn \
			--disable-schemas-install \
			--without-vala
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -lm -pthread -lutil"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/awn-applet-activation/main.c \
			${WRKSRC}/awn-manager/awn-launcher-editor.in \
			${WRKSRC}/awn-manager/awnManager.py.in \
			${WRKSRC}/data/awn-applets-migration \
			${WRKSRC}/data/awn-autostart \
			${WRKSRC}/data/awn-schema-to-gconf

.include <bsd.port.mk>
