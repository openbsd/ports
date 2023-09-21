COMMENT=	x86 machine simulator

DISTNAME=	bochs-2.7
REVISION=	1
CATEGORIES=	emulators
SITES=		${SITE_SOURCEFORGE:=bochs/}

HOMEPAGE=	https://bochs.sourceforge.io/

# LGPLv2.1+ and MIT
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c curses m pthread

COMPILER =	base-clang ports-gcc base-gcc

CONFIGURE_STYLE= gnu autoconf no-autoheader
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
		--with-term \
		--enable-cet \
		--enable-evex

AUTOCONF_VERSION = 2.69

FLAVORS=	debug no_x11
FLAVOR?=

.if ${FLAVOR:Mdebug}
CONFIGURE_ARGS+=--disable-debugger-gui \
		--enable-debugger \
		--enable-x86-debugger \
		--enable-readline
WANTLIB+=	curses readline
.endif

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=--with-nogui
.else
LIB_DEPENDS+=	converters/libiconv \
		devel/sdl
CONFIGURE_ARGS+=--with-sdl \
		--with-x11
WANTLIB+=	SDL X11 Xext Xpm Xrandr Xrender iconv sndio usbhid xcb
.endif

NO_TEST=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	@mv ${PREFIX}/share/doc/bochs/bochsrc-sample.txt \
	    ${PREFIX}/share/bochs/bochsrc

.include <bsd.port.mk>
