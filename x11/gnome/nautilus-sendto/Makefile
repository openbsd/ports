# $OpenBSD: Makefile,v 1.7 2009/08/11 08:39:39 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	applications integration into Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	1.0.1

PKGNAME=	${DISTNAME}p5

CATEGORIES=	misc net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor
WANTLIB += Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender
WANTLIB += asn1 atk-1.0 avahi-client avahi-common avahi-glib bonobo-2
WANTLIB += bonobo-activation c cairo com_err crypto dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gnome-2
WANTLIB += gnomevfs-2 gnutls gobject-2.0 gpg-error gssapi gthread-2.0
WANTLIB += gtk-x11-2.0 krb5 m ncurses nspr4 nss3 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png popt pthread
WANTLIB += smime3 softokn3 soup-2.4 sqlite3 ssl ssl3 tasn1 util
WANTLIB += xml2 z pthread-stubs xcb

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

BUILD_DEPENDS=	::net/gajim \
		::net/pidgin

RUN_DEPENDS=		::archivers/zip \
			::archivers/bzip2
LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			nautilus-extension.>=2::x11/gnome/nautilus \
			purple.>=4::net/pidgin,-libpurple

USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= nautilus-sendto

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-thunderbird-name=thunderbird \
		--with-gajim=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

#FAKE_FLAGS=	GCONFTOOL="/usr/bin/true"
FAKE_FLAGS=	schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>
