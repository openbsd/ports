# $OpenBSD: Makefile,v 1.21 2012/10/16 11:56:11 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT=		RSS reader plugin for evolution

GNOME_PROJECT=		evolution-rss
GNOME_VERSION=		0.3.92
REVISION=		1

CATEGORIES=		mail

EVO_VERSION=		3.6
SUBST_VARS=		EVO_VERSION

HOMEPAGE=		http://gnome.eu.org/evo/index.php/Evolution_RSS_Reader_Plugin

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>, \
			Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender Xt Xxf86vm asn1
WANTLIB += atk-1.0 c cairo cairo-gobject camel-1.2 com_err crypto
WANTLIB += db dbus-1 dbus-glib-1 drm ebackend-1.2 ebook-1.2 ecal-1.2
WANTLIB += edataserver-1.2 edataserverui-3.0 enchant expat ffi
WANTLIB += fontconfig freetype gailutil-3 gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += geoclue gio-2.0 glib-2.0 gmodule-2.0 gnome-desktop-3
WANTLIB += gnome-keyring gobject-2.0 gpg-error gssapi gstapp-0.10
WANTLIB += gstaudio-0.10 gstbase-0.10 gstfft-0.10 gstinterfaces-0.10
WANTLIB += gstpbutils-0.10 gstreamer-0.10 gstvideo-0.10 gthread-2.0
WANTLIB += gtk-3 gtkhtml-4.0 gtkhtml-editor-4.0 ical icalss icalvcal
WANTLIB += icudata icui18n icuuc javascriptcoregtk-3.0 jpeg krb5
WANTLIB += m nspr4 nss3 nssutil3 orc-0.4 pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += smime3 softokn3 soup-2.4 soup-gnome-2.4 sqlite3 ssl3
WANTLIB += stdc++ webkitgtk-3.0 xcb xcb-render xcb-shm xml2 xslt
WANTLIB += atk-bridge-2.0 atspi gck-1 gcr-base-3 harfbuzz icule
WANTLIB += p11-kit xkbfile z
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

MASTER_SITES=		http://gnome.eu.org/

MODULES=		devel/gettext \
			devel/dconf \
			x11/gnome

LIB_DEPENDS=		devel/libsoup,-gnome \
			mail/evolution,-main>=3.6.0 \
			www/webkit,gtk3

MODGNOME_DESKTOP_FILE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--disable-gecko \
			--with-primary-render=webkit

post-install:
	rm ${PREFIX}/lib/evolution/${EVO_VERSION}/{plugins,modules}/*.{a,la}

.include <bsd.port.mk>
