# $OpenBSD: Makefile,v 1.42 2015/08/17 19:52:39 sthen Exp $

COMMENT=	tools to talk to GSM cellular phones

DISTNAME=	gnokii-0.6.14
REVISION=	19
CATEGORIES=	comms x11
SHARED_LIBS +=	gnokii               2.7      # .3.0

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.gnokii.org/
MASTER_SITES=	http://www.gnokii.org/download/gnokii/0.6.x/ \
		ftp://ftp.slackware.pl/pub/gnokii/gnokii/0.6.x/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		c

USE_GMAKE=		Yes

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"
.if ${MACHINE_ARCH} == "alpha"
CONFIGURE_ENV +=	CFLAGS=-fno-stack-protector
.endif
CONFIGURE_ARGS=		--enable-security \
			--disable-debug \
			--disable-xdebug \
			--disable-rlpdebug

.if ${FLAVOR:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
CONFIGURE_ARGS+=	--with-x
LIB_DEPENDS=		x11/gtk+2 \
			textproc/libical
RUN_DEPENDS+=		devel/desktop-file-utils

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xpm Xrandr Xrender atk-1.0 cairo expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0
WANTLIB += harfbuzz ical m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs xcb xcb-render
WANTLIB += xcb-shm z
.endif

WANTLIB += usb usb-1.0
LIB_DEPENDS +=		devel/libusb-compat

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnokii
	${INSTALL_DATA} ${WRKSRC}/Docs/sample/gnokiirc \
		${PREFIX}/share/examples/gnokii
	${INSTALL_DATA} ${WRKSRC}/Docs/man/gnokii.1 \
		${PREFIX}/man/man1
.if !${FLAVOR:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/Docs/man/xgnokii.1x \
		${PREFIX}/man/man1/xgnokii.1
	${INSTALL_DATA} ${WRKSRC}/Docs/sample/logo/gnokii.xpm \
		${PREFIX}/share/pixmaps/xgnokii.xpm
.endif

do-test:
	cd ${WRKSRC}/testsuite && ./testit

.include <bsd.port.mk>
