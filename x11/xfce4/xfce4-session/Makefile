# $OpenBSD: Makefile,v 1.32 2009/09/26 11:16:05 landry Exp $

COMMENT=	Xfce4 session manager

XFCE_PROJECT=	xfce4-session
PKGNAME=	${DISTNAME}p2

SHARED_LIBS +=	xfsm-4.6	0.0 # .0.0

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=	--enable-session-screenshots

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfconf-0::x11/xfce4/xfconf \
		wnck-1::devel/libwnck

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender XRes atk-1.0 c cairo dbus-1 \
		dbus-glib-1 expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 \
		gio-2.0 glade-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre \
		pixman-1 png pthread startup-notification-1 xfce4util xml2 z \
		pthread-stubs xcb

FAKE_FLAGS=	settingsdir=${PREFIX}/share/examples/xfce4-session

post-install:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/xfce4/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/xfce4/README.OpenBSD

.include <bsd.port.mk>
