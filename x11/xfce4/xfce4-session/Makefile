# $OpenBSD: Makefile,v 1.25 2008/10/28 14:29:14 jasper Exp $

COMMENT=	xfce4 session manager

XFCE_PROJECT=	xfce4-session
PKGNAME=	${DISTNAME}p6

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
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},' \
		${FILESDIR}/README.OpenBSD > ${WRKBUILD}/README.OpenBSD
	@sed -e 's,!!LOCALBASE!!,${LOCALBASE},' \
		${FILESDIR}/xfce4.desktop > ${WRKBUILD}/xfce4.desktop
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/xfce4/
	${INSTALL_DATA_DIR} ${PREFIX}/share/xsessions/
	${INSTALL_DATA} ${WRKBUILD}/xfce4.desktop \
		${PREFIX}/share/xsessions/

.include <bsd.port.mk>
