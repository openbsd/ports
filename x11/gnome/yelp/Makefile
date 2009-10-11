# $OpenBSD: Makefile,v 1.46 2009/10/11 17:31:07 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		2.28.0

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 bz2
WANTLIB += c cairo dbus-1 dbus-glib-1 execinfo expat fontconfig
WANTLIB += freetype gcrypt gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 glitz gmodule-2.0 gobject-2.0 gpg-error gthread-2.0
WANTLIB += gtk-x11-2.0 m nspr4 pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 plc4 plds4 png pthread pthread-stubs
WANTLIB += stdc++ xcb xcb-atom xcb-aux xcb-event xml2 z

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		::devel/xulrunner/1.8,-devel \
			::x11/gnome/doc-utils
RUN_DEPENDS=		::misc/shared-mime-info \
			::textproc/docbook-dsssl \
			::x11/gnome/users-guide \
			::x11/gnome/doc-utils
LIB_DEPENDS=		startup-notification-1::devel/startup-notification \
			xulrunner/gtkembedmoz,xulrunner/xpcom,xulrunner/xul::devel/xulrunner/1.8,-main \
			exslt,xslt::textproc/libxslt \
			rarian::textproc/rarian

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	yelp

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gecko=xulrunner \
			--with-search=basic
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/xulrunner/include/" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
