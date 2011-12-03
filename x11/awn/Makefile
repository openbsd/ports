# $OpenBSD: Makefile,v 1.27 2011/12/03 23:34:04 ajacoutot Exp $

COMMENT=		avant window navigator

V=			0.4.0
DISTNAME=		avant-window-navigator-$V
REVISION=		2

SHARED_LIBS +=	awn                  1.0      # .1.1

CATEGORIES=		x11

HOMEPAGE=		https://launchpad.net/awn

# GPLv2/LGPLv2.1
# Images: CC Attribution Share-Alike 3.0 (unported) license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/0.4/$V/+download/

MODULES=		devel/gettext \
			lang/python \
			textproc/intltool \
			devel/gconf2

WANTLIB += GL X11 X11-xcb XRes Xau Xcomposite Xcursor Xdamage
WANTLIB += Xdmcp Xext Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB += atk-1.0 c cairo dbus-1 dbus-glib-1 desktop-agnostic
WANTLIB += desktop-agnostic-cfg desktop-agnostic-fdo desktop-agnostic-ui
WANTLIB += desktop-agnostic-vfs drm execinfo expat fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 gtop-2.0
WANTLIB += kvm m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread pthread-stubs python2.7 startup-notification-1
WANTLIB += stdc++ util wnck-1 xcb xcb-aux xcb-render xcb-shm z

MODGCONF2_LIBDEP =	No
BUILD_DEPENDS=		devel/py-xdg \
			x11/py-gtk2
RUN_DEPENDS=		devel/desktop-file-utils \
			devel/bzr \
			devel/py-xdg \
			x11/dbus-python \
			x11/py-gtk2 \
			x11/gtk+2,-guic
LIB_DEPENDS=		devel/libgtop2 \
			devel/libexecinfo \
			devel/libwnck \
			x11/libdesktop-agnostic \
			${MODPY_LIB_DEPENDS}

MODPY_ADJ_FILES =	awn-settings/awnSettings.py.in  awn-settings/awnSettingsHelper.py
USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
MODGCONF2_SCHEMAS_DIR=	awn

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

# only used for tests
CONFIGURE_ARGS+=	--without-vala

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			ac_python_version=${MODPY_VERSION} \
			LDFLAGS="-L${LOCALBASE}/lib -liconv -lintl -lm -pthread -lutil"

.include <bsd.port.mk>
