# $OpenBSD: Makefile,v 1.59 2010/09/30 09:17:42 ajacoutot Exp $

COMMENT=		GNOME help browser

GNOME_PROJECT=		yelp
GNOME_VERSION=		2.30.2

REVISION=		0

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
WANTLIB += stdc++ xcb xcb-atom xcb-aux xcb-event xml2 z rarian
WANTLIB += xcb-render xcb-render-util startup-notification-1 exslt xslt
WANTLIB += Xt jpeg nss3 nssutil3 smime3 sndio softokn3 sqlite3
WANTLIB += xulrunner1.9/mozjs xulrunner1.9/xpcom xulrunner1.9/xul ssl3

MODULES=		devel/gettext \
			x11/gnome \
			devel/gconf2

BUILD_DEPENDS=		:xulrunner-devel->=1.9.2:devel/xulrunner/1.9,-devel \
			::x11/gnome/doc-utils
RUN_DEPENDS=		::misc/shared-mime-info \
			::textproc/docbook-dsssl \
			::x11/gnome/user-docs \
			::x11/gnome/doc-utils
LIB_DEPENDS=		::devel/startup-notification \
			:xulrunner->=1.9.2:devel/xulrunner/1.9,-main \
			::textproc/libxslt \
			::textproc/rarian

USE_X11=		Yes
MODGCONF2_SCHEMAS_DIR=	yelp
DESKTOP_FILES=		Yes

CONFIGURE_ARGS+= 	${CONFIGURE_SHARED} \
			--with-gecko=libxul \
			--with-gecko-home=${LOCALBASE}/xulrunner1.9 \
			--with-search=basic
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${LOCALBASE}/xulrunner1.9/include/" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			ac_cv_lib_lzmadec_lzmadec_open=no

.include <bsd.port.mk>
