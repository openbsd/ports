# $OpenBSD: Makefile,v 1.17 2009/04/06 10:05:21 ajacoutot Exp $

COMMENT=	SIP and H.323 compatible conferencing application

GNOME_PROJECT=	ekiga
GNOME_VERSION=	2.0.12
PKGNAME=	${DISTNAME}p14

CATEGORIES=	net multimedia

HOMEPAGE=	http://www.ekiga.org/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender art_lgpl_2 asn1 atk-1.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 c cairo com_err crypto \
		dbus-1 dbus-glib-1 expat fontconfig freetype \
		gailutil gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi gthread-2.0 \
		gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pt pthread \
		smime3 softokn3 ssl ssl3 stdc++ tasn1 usbhid util xml2 z \
		gio-2.0 sndio soup-2.4 sqlite3

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	gnomeui-2.>=2000::x11/gnome/libgnomeui \
		opal::net/opal \
		SDL.>=8::devel/sdl \
		camel-1.2.>=10,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
		esd.>=2::audio/esound

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGNOME_HELP_FILES=Yes

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib -L${X11BASE}/lib -pthread"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-dbus \
		--disable-schemas-install \
		--disable-scrollkeeper \
		--disable-avahi \
		--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/ekiga \
		--with-pwlib-dir=${LOCALBASE} \
		--with-opal-dir=${LOCALBASE}

pre-configure:
	@perl -pi -e 's,G_GNUC_UNUSED,,g' \
		${WRKSRC}/src/components/{dbus_stub.h,dbus-helper-stub.h}

.include <bsd.port.mk>
