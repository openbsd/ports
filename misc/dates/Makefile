# $OpenBSD: Makefile,v 1.1.1.1 2008/07/04 10:22:37 pyr Exp $

COMMENT=		lightweight calendar

DISTNAME=		dates-0.4.6
CATEGORIES=		misc x11

HOMEPAGE=		http://pimlico-project.org/dates.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pimlico-project.org/sources/dates/

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite Xcursor \
		Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender \
		asn1 atk-1.0 audiofile bonobo-2 bonobo-activation c cairo \
		com_err crypto db dbus-1 dbus-glib-1 esd expat fontconfig \
		freetype gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gnome-2 gnomevfs-2 gobject-2.0 gssapi \
		gthread-2.0 gtk-x11-2.0 krb5 m nspr4 nss3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 \
		png popt pthread smime3 softokn3 ssl ssl3 util xml2 z

MODULES=		devel/gettext

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		camel-1.2,ebook-1.2,edataserver-1.2::databases/evolution-data-server
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/contacts \
			--disable-schemas-install \
			--enable-gnome-vfs \
			--enable-gconf \
			--enable-dbus
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
