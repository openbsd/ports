# $OpenBSD: Makefile,v 1.27 2008/12/23 23:56:05 steven Exp $

COMMENT=	xfce4 session manager

XFCE_PROJECT=	xfce4-session
PKGNAME=	${DISTNAME}p0

SHARED_LIBS +=  xfsm-4.2             0.1      # .0.1

# GPLv2
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MODULES=	x11/xfce4
DESKTOP_FILES=	Yes

CONFIGURE_ARGS=	--disable-dbus \
		--enable-session-screenshots

LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	::x11/xfce4/xfce-mcs-manager
BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext \
		Xfixes Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat \
		fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 \
		glitz gmodule-2.0 gobject-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		startup-notification-1 xfce4util z

post-install:
	${SUBST_CMD} -c ${FILESDIR}/README.OpenBSD \
		${PREFIX}/share/xfce4/README.OpenBSD
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/xfce4/README.OpenBSD
	${INSTALL_DATA_DIR} ${PREFIX}/share/xsessions/
	${SUBST_CMD} -c ${FILESDIR}/xfce4.desktop \
		${PREFIX}/share/xsessions/xfce4.desktop
	chown ${SHAREOWN}:${SHAREGRP} \
		${PREFIX}/share/xsessions/xfce4.desktop


.include <bsd.port.mk>
