# $OpenBSD: Makefile,v 1.14 2010/05/01 07:28:23 jasper Exp $

COMMENT=		lightweight addressbook

GNOME_PROJECT=		contacts
GNOME_VERSION=		0.11
PKGNAME=		${DISTNAME}p1

CATEGORIES=		misc

HOMEPAGE=		http://pimlico-project.org/contacts.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB += Xfixes Xi Xinerama Xrandr Xrender asn1 atk-1.0 avahi-client
WANTLIB += avahi-common avahi-glib c cairo com_err crypto dbus-1
WANTLIB += dbus-glib-1 expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gpg-error gssapi gthread-2.0 gtk-x11-2.0
WANTLIB += krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 soup-2.4 sqlite3 ssl ssl3 tasn1 util xcb xcb-render
WANTLIB += xcb-render-util xml2 z

MODULES=		devel/gconf2 \
			devel/gettext \
			x11/gnome

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
MODGCONF2_SCHEMAS_DIR=	contacts

LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			gnomevfs-2::x11/gnome/vfs2
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gnome-vfs \
			--enable-gconf \
			--enable-dbus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
