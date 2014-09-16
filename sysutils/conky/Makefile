# $OpenBSD: Makefile,v 1.41 2014/09/16 07:28:09 benoit Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	light-weight system monitor

DISTNAME=	conky-1.9.0
CATEGORIES=	sysutils
HOMEPAGE=	http://conky.sourceforge.net/
REVISION =	1

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=conky/}

# mostly GPLv3; see COPYING
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB=	c crypto kvm idn m ncurses ossaudio pthread ssl z \
		glib-2.0 pcre curl xml2 pthread-stubs ${MODLUA_WANTLIB}

MODULES=	devel/gettext \
		lang/lua
MODLUA_SA=	Yes

LIB_DEPENDS=	devel/glib2 \
		devel/pcre \
		net/curl \
		textproc/libxml \
		${MODLUA_LIB_DEPENDS}


FLAVORS=	no_x11 audacious xmms2
FLAVOR?=

.if ${FLAVOR:Mno_x11}
.  if ${FLAVOR:Maudacious} || ${FLAVOR:Mxmms2}
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
WANTLIB += Imlib2 X11 Xdamage Xext Xfixes Xft
WANTLIB += Xrender expat fontconfig freetype xcb
.endif

.if ${FLAVOR:Maudacious}
CONFIGURE_ARGS+=--enable-audacious=yes
LIB_DEPENDS +=	audio/audacious devel/harfbuzz
WANTLIB +=	GL ICE Xau Xcomposite Xcursor Xdmcp Xi Xinerama \
		Xrandr Xxf86vm atk-1.0 atk-bridge-2.0 atspi \
		audclient audcore audgui cairo cairo-gobject \
		dbus-1 dbus-glib-1 drm ffi gdk-3 gdk_pixbuf-2.0 \
		gio-2.0 gmodule-2.0 gobject-2.0 gthread-2.0 \
		gtk-3 harfbuzz pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		pthread-stubs SM stdc++ xcb-render xcb-shm
.endif

.if ${FLAVOR:Mxmms2}
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
