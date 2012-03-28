# $OpenBSD: Makefile,v 1.1.1.1 2012/03/28 06:16:06 ajacoutot Exp $

COMMENT=	library for bits of crypto UI and parsing

GNOME_PROJECT=	gcr
GNOME_VERSION=	3.4.0

SHARED_LIBS +=  gck-1                     0.0 # 0.0
SHARED_LIBS +=  gcr-3                     0.0 # 1.0
SHARED_LIBS +=  gcr-base-3                0.0 # 1.0

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo cairo-gobject expat
WANTLIB += ffi fontconfig freetype gcrypt gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gpg-error
WANTLIB += gthread-2.0 gtk-3 m p11-kit pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB += xcb xcb-render xcb-shm z

MODULES=	devel/gettext \
		x11/gnome \
		devel/dconf

MODGNOME_TOOLS=	goi
MODGNOME_DESKTOP_FILE=	Yes
MODGNOME_ICON_CACHE=	Yes

USE_LIBTOOL=	gnu

RUN_DEPENDS=	misc/shared-mime-info

LIB_DEPENDS=	x11/gtk+3 \
		security/libgcrypt \
		security/p11-kit

CONFIGURE_ARGS=	--disable-update-mime

.include <bsd.port.mk>
