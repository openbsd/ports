# $OpenBSD: Makefile,v 1.49 2013/03/10 22:55:06 espie Exp $

SHARED_ONLY=		Yes

COMMENT-main=		extended module player
COMMENT-bmp=		extended module player plugin for BMP
COMMENT-xmms=		extended module player plugin for XMMS

DISTNAME=		xmp-3.5.0
PKGNAME-main=		${DISTNAME}
PKGNAME-bmp=		bmp-${DISTNAME}
PKGNAME-xmms=		xmms-${DISTNAME}
CATEGORIES=		audio

HOMEPAGE=		http://xmp.sourceforge.net/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xmp/}

MULTI_PACKAGES=		-main -bmp -xmms

MODULES=		devel/gettext

USE_GMAKE=		Yes
USE_GROFF=		Yes

NO_TEST=		Yes

LIB_DEPENDS-main=	# empty
RUN_DEPENDS-main=	# empty
WANTLIB-main=		c m sndio

LIB_DEPENDS-bmp=	audio/bmp
WANTLIB-bmp=		GL X11 Xcomposite Xcursor Xdamage Xext Xfixes \
			Xi Xinerama Xrandr Xrender atk-1.0 beep cairo \
			expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
			gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 \
			pixman-1 png pthread-stubs xcb xcb-render xcb-shm z \
			${MODGETTEXT_WANTLIB}

LIB_DEPENDS-xmms=	audio/xmms
WANTLIB-xmms=		X11 Xext Xi gdk glib gmodule gtk m xmms ${MODGETTEXT_WANTLIB}

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS= ${WRKSRC}/scripts
CONFIGURE_ARGS+=	--disable-alsa \
			--disable-arts \
			--disable-audacious-plugin \
			--disable-esd \
			--disable-oss \
			--disable-pulseaudio \
			--enable-bmp-plugin \
			--enable-xmms-plugin
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_FLAGS+=		V=1

FAKE_FLAGS=		DESTDIR=${WRKINST} \
			SYSCONFDIR=${PREFIX}/share/examples/xmp

.include <bsd.port.mk>
