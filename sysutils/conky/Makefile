# $OpenBSD: Makefile,v 1.32 2012/07/10 15:22:45 jasper Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	light-weight system monitor

DISTNAME=	conky-1.8.1
REVISION=	10
CATEGORIES=	sysutils
HOMEPAGE=	http://conky.sourceforge.net/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=conky/}

# mostly GPLv3; see COPYING
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c crypto kvm idn m ncurses ossaudio pthread ssl z \
		glib-2.0 pcre curl xml2 ${MODLUA_WANTLIB}

MODULES=	devel/gettext \
		lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS=	devel/glib2 \
		devel/pcre \
		net/curl \
		textproc/libxml \
		${MODLUA_LIB_DEPENDS}

USE_LIBTOOL=	Yes

FLAVORS=	no_x11 audacious xmms2
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
.  if ${FLAVOR:L:Maudacious} || ${FLAVOR:L:Mxmms2}
ERRORS+="Fatal: nonsense combination of flavors"
.  else
CONFIGURE_ARGS+=--disable-double-buffer \
		--disable-own-window \
		--disable-xdamage \
		--disable-xft \
		--disable-x11
.  endif
.else
CONFIGURE_ARGS+=--enable-imlib2
LIB_DEPENDS+=	graphics/imlib2
WANTLIB+=	Imlib2 X11 Xau Xdamage Xdmcp Xext Xfixes Xft \
		Xrender expat fontconfig freetype \
		pthread-stubs xcb
.endif

.if ${FLAVOR:L:Maudacious}
CONFIGURE_ARGS+=--enable-audacious=yes
LIB_DEPENDS+=	audio/audacious
WANTLIB +=	GL Xcomposite Xcursor Xi Xinerama Xrandr Xxf86vm \
		atk-1.0 audclient audcore audgui cairo \
		cairo-gobject dbus-1 dbus-glib-1 drm ffi \
		gdk-3 gdk_pixbuf-2.0 gio-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-3 pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png stdc++ \
		xcb-render xcb-shm
.endif

.if ${FLAVOR:L:Mxmms2}
CONFIGURE_ARGS+=--enable-xmms2
LIB_DEPENDS+=	audio/xmms2
WANTLIB+=	xmmsclient
.endif

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-mpd \
		--enable-rss \
		--disable-config-output \
		--disable-moc \
		--disable-portmon \
		--enable-lua \
		--enable-curl \
		--with-libiconv-prefix="${LOCALBASE}"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib" \
		LUA_CFLAGS="`pkg-config --cflags ${MODLUA_DEP}`" \
		LUA_LIBS="`pkg-config --libs ${MODLUA_DEP}`"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/conky

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/conky

.include <bsd.port.mk>
