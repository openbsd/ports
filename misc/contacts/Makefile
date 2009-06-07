# $OpenBSD: Makefile,v 1.6 2009/06/07 06:01:29 ajacoutot Exp $

COMMENT=		lightweight addressbook

DISTNAME=		contacts-0.9
PKGNAME=		${DISTNAME}p3
CATEGORIES=		misc x11

HOMEPAGE=		http://pimlico-project.org/contacts.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pimlico-project.org/sources/contacts/

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		asn1 atk-1.0 bonobo-2 bonobo-activation c cairo \
		com_err crypto dbus-1 dbus-glib-1 expat fontconfig \
		freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnomevfs-2 gnutls  gobject-2.0 \
		gpg-error gssapi \
		gthread-2.0 gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 \
		png popt pthread smime3 softokn3 ssl ssl3 util xml2 z \
		gio-2.0 soup-2.4 sqlite3 tasn1

MODULES=		devel/gettext \
			textproc/intltool \
			devel/gconf2

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
MODGCONF2_SCHEMAS_DIR=	contacts

LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-gnome-vfs \
			--enable-gconf \
			--enable-dbus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
