# $OpenBSD: Makefile,v 1.19 2010/10/18 20:52:07 espie Exp $

COMMENT=		lightweight addressbook

GNOME_PROJECT=		contacts
GNOME_VERSION=		0.12
REVISION=		0

CATEGORIES=		misc

HOMEPAGE=		http://pimlico-project.org/contacts.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 c cairo
WANTLIB += com_err crypto dbus-1 dbus-glib-1 expat fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gmodule-2.0 gnutls gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread pthread-stubs smime3 soup-2.4 sqlite3 ssl3
WANTLIB += tasn1 xcb xcb-render xcb-render-util xml2 z camel-1.2
WANTLIB += ebook-1.2 edataserver-1.2

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
USE_GROFF =	Yes
MODGCONF2_SCHEMAS_DIR=	contacts

LIB_DEPENDS=		::databases/evolution-data-server
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-gnome-vfs \
			--enable-gconf \
			--enable-dbus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
