# $OpenBSD: Makefile,v 1.21 2011/04/27 12:55:10 dcoppa Exp $

ONLY_FOR_ARCHS= ${APM_ARCHS}

COMMENT=	light-weight system monitor

DISTNAME=	conky-1.8.1

CATEGORIES=	sysutils
HOMEPAGE=	http://conky.sourceforge.net/

MAINTAINER=	Benoit Lecocq <benoit@openbsd.org>

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=conky/}

# BSD / GPLv3
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB=	c crypto kvm idn m ncurses ossaudio pthread ssl z \
		glib-2.0 pcre curl xml2 lua>=5.1

MODULES=	devel/gettext

LIB_DEPENDS=	devel/glib2 \
		devel/pcre \
		net/curl \
		textproc/libxml \
		lang/lua

USE_LIBTOOL=	Yes

FLAVORS=	no_x11 audacious imlib2 xmms2
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
.  if ${FLAVOR:L:Maudacious} || ${FLAVOR:L:Mimlib2} || ${FLAVOR:L:Mxmms2}
ERRORS+="Fatal: nonsense combination of flavors"
.  else
CONFIGURE_ARGS+=--disable-double-buffer \
		--disable-own-window \
		--disable-xdamage \
		--disable-xft \
		--disable-x11
.  endif
.else
WANTLIB+=	X11 Xau Xdamage Xdmcp Xext Xfixes Xft Xrender \
		expat fontconfig freetype pthread-stubs xcb
.endif

.if ${FLAVOR:L:Maudacious}
CONFIGURE_ARGS+=--enable-audacious=yes
LIB_DEPENDS+=	audio/audacious
WANTLIB +=      GL Xcomposite Xcursor Xi Xinerama Xrandr Xxf86vm \
		atk-1.0 audclient audcore audgui cairo dbus-1 \
		dbus-glib-1 drm execinfo gdk-x11-2.0 \
		gdk_pixbuf-2.0 gio-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 gtk-x11-2.0 mcs mowgli pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png \
		xcb-render xcb-shm
.endif

.if ${FLAVOR:L:Mimlib2}
CONFIGURE_ARGS+=--enable-imlib2
LIB_DEPENDS+=	graphics/imlib2
WANTLIB+=	Imlib2
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
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/doc/*.html ${PREFIX}/share/doc/conky
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/conky

FAKE_FLAGS=	configdir=${PREFIX}/share/examples/conky

.include <bsd.port.mk>
