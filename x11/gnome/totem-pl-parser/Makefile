# $OpenBSD: Makefile,v 1.11 2009/07/13 13:27:07 naddy Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	2.24.4
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	totem-plparser		1.0 # .12.5
SHARED_LIBS +=	totem-plparser-mini	1.0 # .12.5

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://projects.gnome.org/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		asn1 atk-1.0 bonobo-2 bonobo-activation cairo com_err \
		crypto dbus-1 dbus-glib-1 expat fontconfig freetype \
		gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		glitz gmodule-2.0 gnutls gobject-2.0 gpg-error gssapi \
		gthread-2.0 gtk-x11-2.0 \
		krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 pangoft2-1.0 \
		pcre pixman-1 plc4 plds4 png smime3 softokn3 soup-2.4 \
		sqlite3 ssl3 tasn1 xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	camel-1.2.>=10,edataserver-1.2::databases/evolution-data-server

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--without-hal

.include <bsd.port.mk>
