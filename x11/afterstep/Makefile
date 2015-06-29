# $OpenBSD: Makefile,v 1.48 2015/06/29 14:46:56 ajacoutot Exp $

COMMENT=	window manager, continuation of the Bowman NeXTSTEP clone

V=		2.2.12
DISTNAME=	AfterStep-${V}
PKGNAME=	${DISTNAME:L}
CATEGORIES=     x11
MASTER_SITES=	ftp://ftp.afterstep.org/stable/

WRKDIST=	${WRKDIR}/afterstep-devel-${V}

HOMEPAGE=	http://www.afterstep.org/

# MIT
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB += ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xrandr Xrender atk-1.0 c cairo dbus-1 execinfo
WANTLIB += fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 jpeg m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 png pthread rsvg-2 tiff z

MODULES=	devel/gettext

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
USE_GROFF =	Yes

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
