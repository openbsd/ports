# $OpenBSD: Makefile,v 1.23 2010/09/03 13:56:30 sthen Exp $

COMMENT=	tools to talk to GSM cellular phones

DISTNAME=	gnokii-0.6.14
REVISION=	12
CATEGORIES=	comms x11
SHARED_LIBS +=	gnokii               2.7      # .3.0

MAINTAINER=	Robert Nagy <robert@openbsd.org>

HOMEPAGE=	http://www.gnokii.org/
MASTER_SITES=	${HOMEPAGE}download/gnokii/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FLAVORS=		no_x11
FLAVOR?=

WANTLIB=		c

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes

MODULES=		devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		LDFLAGS="-L${LOCALBASE}/lib"
CONFIGURE_ARGS=		--enable-security \
			--disable-debug \
			--disable-xdebug \
			--disable-rlpdebug

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+=	--without-x
.else
USE_X11=		Yes
CONFIGURE_ARGS+=	--with-x
LIB_DEPENDS=		::x11/gtk+2 \
			::textproc/libical
RUN_DEPENDS+=		:desktop-file-utils-*:devel/desktop-file-utils

WANTLIB += X11 Xau Xdmcp Xpm Xrender fontconfig freetype z Xcomposite Xdamage
WANTLIB += pixman-1 gio-2.0 m pthread pcre atk-1.0.>=800.0 glib-2.0.>=400.8
WANTLIB += gmodule-2.0.>=400.8 gobject-2.0.>=400.8 pango-1.0.>=600.0
WANTLIB += pangoft2-1.0.>=600.0 pangocairo-1.0 cairo glitz png expat Xcursor
WANTLIB += Xext Xfixes Xi Xinerama Xrandr pthread-stubs xcb ical
WANTLIB += gtk-x11-2.0.>=400.13 gdk-x11-2.0.>=400.13 gdk_pixbuf-2.0.>=400.13
WANTLIB += gthread-2.0 xcb-render xcb-render-util
.endif

LIB_DEPENDS+=		usb.>=8::devel/libusb

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gnokii
	${INSTALL_DATA} ${WRKSRC}/Docs/sample/gnokiirc \
		${PREFIX}/share/examples/gnokii
	${INSTALL_DATA} ${WRKSRC}/Docs/man/gnokii.1 \
		${PREFIX}/man/man1
.if !${FLAVOR:L:Mno_x11}
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps
	${INSTALL_DATA} ${WRKSRC}/Docs/man/xgnokii.1x \
		${PREFIX}/man/man1/xgnokii.1
	${INSTALL_DATA} ${WRKSRC}/Docs/sample/logo/gnokii.xpm \
		${PREFIX}/share/pixmaps/xgnokii.xpm
.endif

do-regress:
	cd ${WRKSRC}/testsuite && ./testit

.include <bsd.port.mk>
