# $OpenBSD: Makefile,v 1.39 2010/12/21 18:06:05 shadchin Exp $

SHARED_ONLY=		Yes

COMMENT-main=		extended module player
COMMENT-audacious=	extended module player plugin for Audacious
COMMENT-bmp=		extended module player plugin for BMP
COMMENT-xmms=		extended module player plugin for XMMS

DISTNAME=		xmp-3.3.0
PKGNAME-main=		${DISTNAME}
PKGNAME-audacious=	audacious-${DISTNAME}
PKGNAME-bmp=		bmp-${DISTNAME}
PKGNAME-xmms=		xmms-${DISTNAME}
CATEGORIES=		audio

HOMEPAGE=		http://xmp.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xmp/}

MULTI_PACKAGES=		-main -audacious -bmp -xmms

USE_GMAKE=		Yes
USE_GROFF =		Yes

NO_REGRESS=		Yes

WANTLIB-main=		c m sndio

LIB_DEPENDS-audacious=	audio/audacious>=2.4.2
WANTLIB-audacious=	GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo dbus-1 \
			dbus-glib-1 drm expat fontconfig freetype gdk-x11-2.0 \
			gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 \
			gthread-2.0 gtk-x11-2.0 iconv intl m mcs mowgli pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs \
			xcb xcb-render xcb-shm z

LIB_DEPENDS-bmp=	audio/bmp
WANTLIB-bmp=		GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 beep cairo \
			drm expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			gtk-x11-2.0 iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			pixman-1 png pthread-stubs xcb xcb-render xcb-shm z

LIB_DEPENDS-xmms=	audio/xmms
WANTLIB-xmms=		X11 Xext Xi gdk glib gmodule gtk iconv intl m xmms

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/scripts
CONFIGURE_ARGS+=	--disable-oss \
			--disable-alsa \
			--enable-audacious-plugin \
			--enable-bmp-plugin \
			--enable-xmms-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			LIBS=-lsndio

MAKE_FLAGS+=		V=1

FAKE_FLAGS=		DESTDIR=${WRKINST} \
			SYSCONFDIR=${PREFIX}/share/examples/xmp

.include <bsd.port.mk>
