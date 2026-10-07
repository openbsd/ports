COMMENT=	x86 machine simulator

V =		3.1
GH_ACCOUNT =	bochs-emu
GH_PROJECT =	Bochs
GH_TAGNAME =	REL_3_1_FINAL
DISTNAME =	${GH_PROJECT:L}-${V}
REVISION =	1

CATEGORIES=	emulators

HOMEPAGE=	https://bochs.sourceforge.io/

# LGPLv2.1+ and MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses glib-2.0 iconv intl m pcre2-8
WANTLIB += samplerate slirp

COMPILER =	base-clang ports-gcc

CONFIGURE_STYLE= gnu autoconf no-autoheader
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
		LDFLAGS="-I${LOCALBASE}/lib -L${X11BASE}/lib"
CONFIGURE_ARGS=	--disable-docbook \
		--enable-all-optimizations \
		--enable-clgd54xx \
		--enable-avx \
		--enable-e1000 \
		--enable-es1370 \
		--enable-large-ramfile \
		--enable-ne2000 \
		--enable-pnic \
		--enable-smp \
		--enable-svm \
		--enable-x86-64 \
		--enable-usb \
		--enable-usb-ohci \
		--enable-vmx=2 \
		--enable-cet \
		--enable-evex \
		--enable-using-libslirp \
		--with-term \
		--without-wx

AUTOCONF_VERSION = 2.72

FLAVORS=	debug no_x11
FLAVOR?=

LIB_DEPENDS +=	audio/libsamplerate \
		net/libslirp

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS += --enable-debugger \
		--enable-x86-debugger \
		--enable-readline
WANTLIB +=	curses readline
.endif

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS += --with-nogui \
		--disable-debugger-gui \
		--disable-usb-debugger
.else
LIB_DEPENDS +=	converters/libiconv \
		devel/sdl2
CONFIGURE_ARGS += --with-sdl2 \
		--with-x11
WANTLIB += SDL2 X11 Xcursor Xext Xfixes Xi Xpm Xrandr Xrender
WANTLIB += Xss sndio usbhid xcb
.  if ${FLAVOR:Mdebug}
LIB_DEPENDS += x11/gtk+3
WANTLIB += XRes Xau Xcomposite Xdamage Xdmcp Xinerama atk-1.0
WANTLIB += atk-bridge-2.0 atspi cairo cairo-gobject dbus-1 epoll-shim
WANTLIB += epoxy expat ffi fontconfig freetype fribidi gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 gmodule-2.0 gobject-2.0 graphite2 gtk-3 harfbuzz
WANTLIB += jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1
WANTLIB += png wayland-client wayland-cursor wayland-egl xcb-render
WANTLIB += xcb-shm xkbcommon z
.  endif
.endif

NO_TEST=	Yes

WRKSRC =	${WRKDIST}/bochs

USE_GMAKE =	Yes

DEBUG_PACKAGES = ${BUILD_PACKAGES}

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	@mv ${PREFIX}/share/doc/bochs/bochsrc-sample.txt \
	    ${PREFIX}/share/bochs/bochsrc

.include <bsd.port.mk>
