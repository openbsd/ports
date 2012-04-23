# $OpenBSD: Makefile,v 1.5 2012/04/23 07:05:17 jasper Exp $

SHARED_ONLY=	Yes

COMMENT=	evolution connector for MS Exchange via EWS

GNOME_PROJECT=	evolution-ews
GNOME_VERSION=	3.4.1

CATEGORIES=	mail

SHARED_LIBS +=  eews-1.2                  0.0 # 0.0
SHARED_LIBS +=  ewsutils                  0.0 # 0.0
SHARED_LIBS +=  lzx                       0.0 # 0.0

EVO_VERSION=	3.4
SUBST_VARS=	EVO_VERSION

HOMEPAGE=	http://projects.gnome.org/evolution/

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm asn1
WANTLIB += atk-1.0 cairo cairo-gobject camel-1.2 com_err crypto
WANTLIB += db dbus-1 dbus-glib-1 drm ebackend-1.2 ebook-1.2 ecal-1.2
WANTLIB += edata-book-1.2 edata-cal-1.2 edataserver-1.2 edataserverui-3.0
WANTLIB += enchant expat ffi fontconfig freetype gailutil-3 gconf-2
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gnome-desktop-3 gnome-keyring goa-1.0 gobject-2.0 gpg-error
WANTLIB += gssapi gthread-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0
WANTLIB += ical icalss icalvcal krb5 m nspr4 nss3 nssutil3 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 plc4 plds4
WANTLIB += png pthread-stubs smime3 softokn3 soup-2.4 sqlite3
WANTLIB += ssl3 stdc++ xcb xcb-render xcb-shm xml2 z
WANTLIB += lib/evolution/${EVO_VERSION}/email-engine
WANTLIB += lib/evolution/${EVO_VERSION}/email-utils
WANTLIB += lib/evolution/${EVO_VERSION}/emiscwidgets
WANTLIB += lib/evolution/${EVO_VERSION}/eshell
WANTLIB += lib/evolution/${EVO_VERSION}/etable
WANTLIB += lib/evolution/${EVO_VERSION}/etext
WANTLIB += lib/evolution/${EVO_VERSION}/eutil
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-a11y
WANTLIB += lib/evolution/${EVO_VERSION}/filter
WANTLIB += lib/evolution/${EVO_VERSION}/gnomecanvas
WANTLIB += lib/evolution/${EVO_VERSION}/menus

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	mail/evolution,-main>=3.4.1

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static
MODGNOME_LDFLAGS=-Wl,-rpath,${TRUEPREFIX}/lib/evolution-data-server/camel-providers:${LOCALBASE}/lib/evolution-data-server-${EVO_VERSION}:${TRUEPREFIX}/lib

.include <bsd.port.mk>
