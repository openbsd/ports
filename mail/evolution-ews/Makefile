# $OpenBSD: Makefile,v 1.10 2012/10/03 15:57:18 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	evolution connector for MS Exchange via EWS

GNOME_PROJECT=	evolution-ews
GNOME_VERSION=	3.6.0
REVISION=	0

CATEGORIES=	mail

SHARED_LIBS +=  eews-1.2                  1.0 # 0.0
SHARED_LIBS +=  ewsutils                  1.0 # 0.0
SHARED_LIBS +=  lzx                       1.0 # 0.0

EVO_VERSION=	3.6
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
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm asn1
WANTLIB += atk-1.0 atk-bridge-2.0 atspi cairo cairo-gobject camel-1.2
WANTLIB += canberra canberra-gtk3 com_err crypto db dbus-1 dbus-glib-1
WANTLIB += drm ebackend-1.2 ebook-1.2 ecal-1.2 edata-book-1.2
WANTLIB += edata-cal-1.2 edataserver-1.2 edataserverui-3.0 enchant
WANTLIB += expat ffi fontconfig freetype gailutil-3 gck-1 gcr-base-3
WANTLIB += gcrypt gdk-3 gdk_pixbuf-2.0 geoclue gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gnome-desktop-3 gnome-keyring goa-1.0 gobject-2.0
WANTLIB += gpg-error gssapi gstapp-0.10 gstaudio-0.10 gstbase-0.10
WANTLIB += gstfft-0.10 gstinterfaces-0.10 gstpbutils-0.10 gstreamer-0.10
WANTLIB += gstvideo-0.10 gthread-2.0 gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0
WANTLIB += harfbuzz ical icalss icalvcal icudata icui18n icule
WANTLIB += icuuc javascriptcoregtk-3.0 jpeg krb5 ltdl m nspr4
WANTLIB += nss3 nssutil3 ogg orc-0.4 p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3
WANTLIB += stdc++ vorbis vorbisfile webkitgtk-3.0 xcb xcb-render
WANTLIB += xcb-shm xkbfile xml2 xslt z secret-1
WANTLIB += lib/evolution/${EVO_VERSION}/composer
WANTLIB += lib/evolution/${EVO_VERSION}/eabutil
WANTLIB += lib/evolution/${EVO_VERSION}/econtacteditor
WANTLIB += lib/evolution/${EVO_VERSION}/econtactlisteditor
WANTLIB += lib/evolution/${EVO_VERSION}/email-engine
WANTLIB += lib/evolution/${EVO_VERSION}/email-utils
WANTLIB += lib/evolution/${EVO_VERSION}/emformat
WANTLIB += lib/evolution/${EVO_VERSION}/emiscwidgets
WANTLIB += lib/evolution/${EVO_VERSION}/eshell
WANTLIB += lib/evolution/${EVO_VERSION}/essmime
WANTLIB += lib/evolution/${EVO_VERSION}/etable
WANTLIB += lib/evolution/${EVO_VERSION}/etext
WANTLIB += lib/evolution/${EVO_VERSION}/eutil
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-a11y
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-mail
WANTLIB += lib/evolution/${EVO_VERSION}/evolution-smime
WANTLIB += lib/evolution/${EVO_VERSION}/filter
WANTLIB += lib/evolution/${EVO_VERSION}/gnomecanvas
WANTLIB += lib/evolution/${EVO_VERSION}/menus

MODULES=	devel/gettext \
		x11/gnome

LIB_DEPENDS=	mail/evolution,-main>=3.6.0

LIBTOOL_FLAGS=	--tag=disable-static

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--disable-static \
		--with-krb5=/usr \
		--with-krb5-includes=/usr/include/kerberosV

MODGNOME_LDFLAGS=-Wl,-rpath,${TRUEPREFIX}/lib/evolution-data-server/camel-providers:${LOCALBASE}/lib/evolution-data-server-${EVO_VERSION}:${TRUEPREFIX}/lib

post-install:
	rm ${PREFIX}/lib/evolution-data-server/*/*.la
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/modules/*.la

.include <bsd.port.mk>
