# $OpenBSD: Makefile,v 1.16 2009/04/16 08:11:13 ajacoutot Exp $

COMMENT=		GNOME on-screen keyboard

GNOME_PROJECT=		gok
GNOME_VERSION=		2.24.0
PKGNAME=		${DISTNAME}p6

HOMEPAGE=		http://live.gnome.org/Gok

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 XRes Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama \
		Xrandr Xrender Xtst art_lgpl_2 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c cairo crypto dbus-1 \
		dbus-glib-1 expat fontconfig freetype gailutil \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glade-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png popt \
		pthread ssl startup-notification-1 util xml2 z sndio

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=		wnck-1::devel/libwnck \
			cspi,loginhelper,spi::x11/gnome/at-spi \
			gnomeui-2::x11/gnome/libgnomeui \
			gnomespeech::x11/gnome/speech \
			esd.>=2::audio/esound

MODGNOME_HELP_FILES=	Yes
USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gok \
			--disable-schemas-install \
			--disable-scrollkeeper
# XXX X Window System Error ('BadLenght...')
CONFIGURE_ARGS+=	--disable-xevie
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib"

# The regression tests require a running instance of X.
# You will also need to set the XAUTHORITY environment variable to point 
# to the appropriate .Xauthority file. 
REGRESS_IS_INTERACTIVE= Yes
REGRESS_FLAGS+= 	DISPLAY=${DISPLAY} XAUTHORITY=${XAUTHORITY}

post-build:
	cd ${WRKSRC} && \
	for i in $$(ls *.kbd.in) ; do LANG=C ${LOCALBASE}/bin/intltool-merge -x -u ./ $$i `basename $$i .in` ; done

.include <bsd.port.mk>
