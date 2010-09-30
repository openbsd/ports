# $OpenBSD: Makefile,v 1.21 2010/09/30 07:31:06 ajacoutot Exp $

COMMENT=	graphical bug reporting tool for GNOME

GNOME_PROJECT=	bug-buddy
GNOME_VERSION=	2.32.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += asn1 atk-1.0 c cairo com_err crypto dbus-1 dbus-glib-1 elf
WANTLIB += expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gssapi gthread-2.0 gtk-x11-2.0 krb5 kvm m gtop-2.0
WANTLIB += nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 plc4 plds4 png pthread pthread-stubs smime3
WANTLIB += soup-2.4 sqlite3 ssl3 tasn1 xcb xcb-render xcb-render-util
WANTLIB += xml2 z camel-1.2 ebook-1.2 edataserver-1.2 bonobo-2
WANTLIB += gdata gnome-keyring nssutil3 proxy soup-gnome-2.4
WANTLIB += bonobo-activation eggdbus-1

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::textproc/rarian \
		::x11/gnome/doc-utils
LIB_DEPENDS=	::databases/evolution-data-server \
		::devel/libelf \
		::x11/gnome/libbonobo \
		::devel/libgtop2 \
		::devel/eggdbus

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/include/libelf" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--enable-eds

USE_X11=	Yes
DESKTOP_FILES=	Yes
MODGCONF2_SCHEMAS_DIR= bug-buddy

.include <bsd.port.mk>
