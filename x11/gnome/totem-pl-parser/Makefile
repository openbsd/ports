# $OpenBSD: Makefile,v 1.3 2008/06/02 17:58:24 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	GObject-based parsing library

GNOME_PROJECT=	totem-pl-parser
GNOME_VERSION=	2.22.3
PKGNAME=	${DISTNAME}p1
SHARED_LIBS +=	totem-plparser		0.0 # .11.1
SHARED_LIBS +=	totem-plparser-mini	0.0 # .11.1

CATEGORIES=	multimedia textproc

HOMEPAGE=	http://www.gnome.org/projects/totem/

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		asn1 atk-1.0 bonobo-2 bonobo-activation cairo com_err \
		crypto db dbus-1 dbus-glib-1 expat fontconfig freetype \
		gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 glitz \
		gmodule-2.0 gnomevfs-2 gobject-2.0 gssapi gthread-2.0 \
		gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0 pangocairo-1.0 \
		pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread smime3 \
		softokn3 ssl ssl3 util xml2 z

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	camel-1.2.>=10,edataserver-1.2::databases/evolution-data-server

CONFIGURE_ENV= 	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--disable-gtk-doc \
		--without-hal

.include <bsd.port.mk>
