# $OpenBSD: Makefile,v 1.22 2008/06/02 15:37:10 ajacoutot Exp $

COMMENT=	xfce4 session manager

V=		4.4.2
DISTNAME=	xfce4-session-${V}
PKGNAME=	${DISTNAME}p3

SHARED_LIBS +=  xfsm-4.2             0.1      # .0.1

HOMEPAGE=	http://www.xfce.org/projects/xfce4-session/
MAINTAINER=	Landry Breuil <gaston@gcu.info>

# GPL
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.xfce.org/archive/xfce-${V}/src/
EXTRACT_SUFX=	.tar.bz2

USE_GMAKE=	Yes

CONFIGURE_ARGS=	--disable-dbus \
		--enable-session-screenshots

BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager
LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/xfce4/xfce-mcs-manager

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
