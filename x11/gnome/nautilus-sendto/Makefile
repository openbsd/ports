# $OpenBSD: Makefile,v 1.9 2009/11/17 23:57:31 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	2.28.2

CATEGORIES=	misc net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += asn1 atk-1.0 bonobo-2 bonobo-activation c cairo camel-1.2
WANTLIB += com_err crypto dbus-1 dbus-glib-1 ebook-1.2 edataserver-1.2
WANTLIB += expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls gobject-2.0
WANTLIB += gpg-error gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4
WANTLIB += nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += plc4 plds4 png pthread pthread-stubs smime3 softokn3
WANTLIB += soup-2.4 sqlite3 ssl3 tasn1 xcb xml2 z

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::net/gajim

RUN_DEPENDS=		::archivers/zip \
			::archivers/bzip2
LIB_DEPENDS=		nautilus-extension.>=2::x11/gnome/nautilus

USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= nautilus-sendto

CONFIGURE_ARGS+= ${CONFIGURE_SHARED} \
		--with-gajim=${LOCALBASE}

# --with-plugins=all ; needs newer empathy
# allowed_plugins="bluetooth empathy evolution gajim nautilus-burn pidgin removable-devices upnp"
CONFIGURE_ARGS+= --with-plugins="evolution gajim pidgin removable-devices"

CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>
