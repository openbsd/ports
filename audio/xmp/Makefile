# $OpenBSD: Makefile,v 1.32 2009/12/16 07:49:29 jakemsr Exp $

COMMENT-main=		extended module player
COMMENT-audacious=	extended module player plugin for Audacious
COMMENT-bmp=		extended module player plugin for BMP
COMMENT-xmms=		extended module player plugin for XMMS
DISTNAME=		xmp-3.0.0
PKGNAME-main=		${DISTNAME}
PKGNAME-audacious=	audacious-${DISTNAME}
PKGNAME-bmp=		bmp-${DISTNAME}
PKGNAME-xmms=		xmms-${DISTNAME}
CATEGORIES=		audio

HOMEPAGE=		http://xmp.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=xmp/}

SHARED_ONLY=		Yes

MULTI_PACKAGES=		-main -audacious -bmp -xmms

USE_X11=		Yes
USE_GMAKE=		Yes

WANTLIB=		m

WANTLIB-main=		${WANTLIB} c sndio

LIB_DEPENDS-audacious=	${LIB_DEPENDS} audclient.>=1::audio/audacious
WANTLIB-audacious=	${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
			Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo \
			dbus-1 dbus-glib-1 expat fontconfig freetype \
			gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz \
			gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 \
			iconv intl mcs mowgli pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pixman-1 png pthread-stubs samplerate \
			xcb z

LIB_DEPENDS-bmp=	${LIB_DEPENDS} beep.>=2::audio/bmp
WANTLIB-bmp=		${WANTLIB} X11 Xau Xcomposite Xcursor Xdamage Xdmcp \
			Xext Xfixes Xi Xinerama Xrandr Xrender atk-1.0 cairo \
			expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
			gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
			gtk-x11-2.0 iconv intl pango-1.0 pangocairo-1.0 \
			pangoft2-1.0 pixman-1 png pthread-stubs xcb z

LIB_DEPENDS-xmms=	${LIB_DEPENDS} xmms.>=4::audio/xmms
WANTLIB-xmms=		${WANTLIB} X11 Xext Xi gdk glib gmodule gtk iconv intl

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
