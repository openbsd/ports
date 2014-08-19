# $OpenBSD: Makefile,v 1.38 2014/08/19 05:33:47 landry Exp $

COMMENT=	tools to talk to GSM cellular phones

DISTNAME=	gnokii-0.6.14
REVISION=	17
CATEGORIES=	comms x11
SHARED_LIBS +=	gnokii               2.7      # .3.0

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.gnokii.org/
MASTER_SITES=	ftp://ftp.slackware.pl/pub/gnokii/gnokii/0.6.x/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		c

USE_GMAKE=		Yes
USE_GROFF =		Yes

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

WANTLIB += X11 Xau Xdmcp Xpm Xrender fontconfig freetype z Xcomposite Xdamage
WANTLIB += pixman-1 gio-2.0 m pthread pcre atk-1.0>=800 glib-2.0>=400.8
WANTLIB += gmodule-2.0>=400.8 gobject-2.0>=400.8 pango-1.0>=600
WANTLIB += pangoft2-1.0>=600 pangocairo-1.0 cairo png expat Xcursor
WANTLIB += Xext Xfixes Xi Xinerama Xrandr pthread-stubs xcb ical
WANTLIB += gtk-x11-2.0>=400.13 gdk-x11-2.0>=400.13 gdk_pixbuf-2.0>=400.13
WANTLIB += gthread-2.0 xcb-render
WANTLIB += GL Xxf86vm drm ffi stdc++ xcb-shm
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
