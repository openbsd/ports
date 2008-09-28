# $OpenBSD: Makefile,v 1.9 2008/09/28 09:16:24 sturm Exp $

COMMENT= 		telepathy based messenger for the Gnome desktop

GNOME_PROJECT=		empathy
GNOME_VERSION=		0.14
PKGNAME=		${DISTNAME}p7
SHARED_LIBS +=	empathy              0.0      # .4.0
SHARED_LIBS +=	empathy-gtk          0.0      # .5.0
CATEGORIES=		net

HOMEPAGE=		http://live.gnome.org/Empathy

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

# XXX: To be fixed
MASTER_SITES=		${MASTER_SITE_GNOME:=sources/empathy/0.14/}

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		asn1 atk-1.0 audiofile bonobo-2 bonobo-activation c \
		cairo com_err crypto db dbus-1 dbus-glib-1 esd expat \
		fontconfig freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 \
		glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2 gnomevfs-2 \
		gobject-2.0 gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4 \
		nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 \
		plds4 png popt pthread smime3 softokn3 ssl ssl3 telepathy \
		telepathy-glib util xml2 z

MODULES=		devel/gettext \
			lang/python \
			x11/gnome

BUILD_DEPENDS=		::devel/iso-codes \
			::x11/py-gtk2
LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			missioncontrol-client::net/telepathy/telepathy-mission-control \
			${MODPY_LIB_DEPENDS}
RUN_DEPENDS=		::net/telepathy/telepathy-butterfly \
			::net/telepathy/telepathy-gabble \
			::x11/hicolor-icon-theme \
			::x11/py-gtk2

USE_X11=		Yes
DESKTOP_FILES=		Yes
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/empathy \
			--disable-schemas-install \
			--disable-scrollkeeper \
			--disable-aspell \
			--disable-voip \
			--disable-nothere \
			--disable-megaphone \
			--enable-python=Yes
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
