# $OpenBSD: Makefile,v 1.7 2009/08/10 06:33:02 kili Exp $

COMMENT=		lightweight calendar

DISTNAME=		dates-0.4.6
PKGNAME=		${DISTNAME}p4
CATEGORIES=		misc x11

HOMEPAGE=		http://pimlico-project.org/dates.html

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://pimlico-project.org/sources/dates/

WANTLIB=	ORBit-2 ORBitCosNaming-2 X11 Xau Xcomposite \
		Xcursor Xdamage Xdmcp Xext Xfixes Xi Xinerama Xrandr \
		Xrender atk-1.0 bonobo-2 bonobo-activation c \
		cairo crypto dbus-1 dbus-glib-1 expat \
		fontconfig freetype gconf-2 gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 \
		glib-2.0 glitz gmodule-2.0 gnome-2 gnomevfs-2 gnutls \
		gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 m nspr4 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4 \
		png popt pthread ssl tasn1 util xml2 z gio-2.0 soup-2.4 \
		avahi-client avahi-common avahi-glib pthread-stubs xcb

MODULES=		devel/gettext \
			textproc/intltool

USE_X11=		Yes
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

LIB_DEPENDS=		ecal-1.2,edataserver-1.2::databases/evolution-data-server
RUN_DEPENDS=		::devel/desktop-file-utils

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--disable-owl \
			--disable-hildon
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
