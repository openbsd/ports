# $OpenBSD: Makefile,v 1.23 2009/10/15 16:17:15 jasper Exp $

COMMENT=		GNOME on-screen keyboard

GNOME_PROJECT=		gok
GNOME_VERSION=		2.28.0

HOMEPAGE=		http://live.gnome.org/Gok

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite
WANTLIB += Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 bonobo-2 bonobo-activation c cairo
WANTLIB += dbus-1 dbus-glib-1 execinfo expat fontconfig freetype
WANTLIB += gailutil gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += glitz gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB += ltdl m ogg pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png pthread pthread-stubs startup-notification-1
WANTLIB += vorbis vorbisfile xcb xcb-atom xcb-aux xcb-event xml2
WANTLIB += z

MODULES=	devel/gconf2 \
		devel/gettext \
		x11/gnome

LIB_DEPENDS=		canberra-gtk,canberra::audio/libcanberra \
			glade-2.0::devel/libglade2 \
			wnck-1::devel/libwnck \
			cspi,loginhelper,spi::x11/gnome/at-spi \
			gnomespeech::x11/gnome/speech

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
MODGCONF2_SCHEMAS_DIR=	gok

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-scrollkeeper
# XXX X Window System Error ('BadLenght...')
CONFIGURE_ARGS+=	--disable-xevie
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

REGRESS_IS_INTERACTIVE= x11

post-build:
	cd ${WRKSRC} && \
	for i in $$(ls *.kbd.in) ; do LANG=C ${LOCALBASE}/bin/intltool-merge -x -u ./ $$i `basename $$i .in` ; done

.include <bsd.port.mk>
