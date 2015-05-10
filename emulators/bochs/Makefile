# $OpenBSD: Makefile,v 1.66 2015/05/10 08:01:58 ajacoutot Exp $

COMMENT=	x86 machine simulator

DISTNAME=	bochs-2.6.8
CATEGORIES=	emulators
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=bochs/}

HOMEPAGE=	http://bochs.sourceforge.net/

# LGPLv2.1+ and MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c m pthread stdc++ termlib

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--enable-all-optimizations \
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
		--with-term

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
MODULES=	converters/libiconv
LIB_DEPENDS+=	devel/sdl
CONFIGURE_ARGS+=--with-sdl \
		--with-x11
WANTLIB+=	SDL X11 Xext Xpm Xrandr Xrender sndio usbhid xcb
.endif

NO_TEST=	Yes

post-install:
	${INSTALL_DATA} ${WRKSRC}/docs-html/*.html ${PREFIX}/share/doc/bochs
	@mv ${PREFIX}/share/doc/bochs/bochsrc-sample.txt \
	    ${PREFIX}/share/bochs/bochsrc

.include <bsd.port.mk>
