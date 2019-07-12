# $OpenBSD: Makefile,v 1.54 2019/07/12 21:02:29 sthen Exp $

COMMENT=	window manager, continuation of the Bowman NeXTSTEP clone

V=		2.2.12
REVISION=	4
DISTNAME=	AfterStep-${V}
PKGNAME=	${DISTNAME:L}
CATEGORIES=     x11
MASTER_SITES=	ftp://ftp.afterstep.org/stable/

WRKDIST=	${WRKDIR}/afterstep-devel-${V}

HOMEPAGE=	http://www.afterstep.org/

# MIT
PERMIT_PACKAGE=	Yes

WANTLIB =  ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo curses dbus-1 execinfo fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 intl jpeg m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png readline rsvg-2 tiff z

RUN_DEPENDS=	devel/desktop-file-utils \
		shells/bash \
		x11/asclock,classic,english \
		x11/rxvt-unicode \
		x11/xloadimage

LIB_DEPENDS=	devel/libexecinfo \
		x11/dbus \
		x11/gnome/librsvg \
		x11/gtk+2

CPPFLAGS=	-I${LOCALBASE}/include
CFLAGS +=	${CPPFLAGS}

NO_TEST=	Yes
USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="${CPPFLAGS}"

CONFIGURE_ARGS=	--with-imageloader="xloadimage -onroot -quiet -colors 20" \
		--with-helpcommand="urxvt -e man" \
		--without-gnome-session \
		--enable-i18n \
		--enable-different-looknfeels \
		--disable-send-postcard-to-developer \

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure \
		${WRKSRC}/libAfter{Base,Image}/configure \
		${WRKSRC}/libAfterConf/Makefile.in
	perl -pi -e 's,/bin/bash,${LOCALBASE}/bin/bash,' \
		${WRKSRC}/tools/importasmenu

pre-install:
	${INSTALL_DATA_DIR} \
		${PREFIX}/share/applications \
		${PREFIX}/share/gnome/wm-properties \
		${PREFIX}/share/gnome-session/sessions

post-install:
	${INSTALL_DATA} ${FILESDIR}/monitor_bsd.xpm \
		${PREFIX}/share/afterstep/desktop/icons/
	rmdir ${PREFIX}/share/afterstep_old/

.include <bsd.port.mk>
