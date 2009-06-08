# $OpenBSD: Makefile,v 1.3 2009/06/08 18:03:15 ajacoutot Exp $

COMMENT-main=	applications integration into Nautilus
COMMENT-pidgin=	pidgin integration in Nautilus

GNOME_PROJECT=	nautilus-sendto
GNOME_VERSION=	1.0.1

PKGNAME-main=	${DISTNAME}p1
PKGNAME-pidgin=	${GNOME_PROJECT}-pidgin-${GNOME_VERSION}p0

CATEGORIES-main=	misc
CATEGORIES-pidgin=	net

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo dbus-1 dbus-glib-1
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre
WANTLIB += pixman-1 png xml2 z

WANTLIB-main += ${WANTLIB}
WANTLIB-main += ORBit-2 ORBitCosNaming-2 asn1 bonobo-2 bonobo-activation
WANTLIB-main += c com_err crypto gcrypt glade-2.0 gnome-2 gnomevfs-2
WANTLIB-main += gnutls gpg-error gssapi krb5 nspr4 nss3 plc4 plds4
WANTLIB-main += popt pthread smime3 softokn3 soup-2.4 sqlite3 ssl ssl3
WANTLIB-main += tasn1 util

WANTLIB-pidgin += ${WANTLIB}
WANTLIB-pidgin += ncurses

MODULES=	devel/gettext \
		x11/gnome \
		devel/gconf2

MULTI_PACKAGES=	-main -pidgin

BUILD_DEPENDS=	::net/gajim

RUN_DEPENDS-main=	::archivers/zip \
			::archivers/bzip2
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			${MODGCONF2_LIB_DEPENDS} \
			camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server \
			nautilus-extension.>=2::x11/gnome/nautilus

RUN_DEPENDS-pidgin=	::${BASE_PKGPATH},-main
LIB_DEPENDS-pidgin=	${LIB_DEPENDS} \
			purple.>=4::net/pidgin

USE_X11=	Yes
MODGCONF2_SCHEMAS_DIR= nautilus-sendto
MODGCONF2_LIBDEP= No
MODGCONF2_RUNDEP= No

CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-thunderbird-name=thunderbird \
		--with-gajim=${LOCALBASE}
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	GCONFTOOL="/usr/bin/true" \
		schemadir=${PREFIX}/share/schemas/nautilus-sendto

.include <bsd.port.mk>
