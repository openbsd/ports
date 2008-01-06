# $OpenBSD: Makefile,v 1.18 2008/01/06 12:00:07 landry Exp $

COMMENT=	xfce4 session manager

V=		4.4.2
DISTNAME=	xfce4-session-${V}
PKGNAME=	${DISTNAME}p0

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

BUILD_DEPENDS=	::x11/xfce4/xfce-mcs-manager \
		::textproc/p5-XML-Parser
LIB_DEPENDS=	xfcegui4.>=4::x11/xfce4/libxfcegui4 \
		xfce4mcs-client.>=3::x11/xfce4/libxfce4mcs
RUN_DEPENDS=	::devel/desktop-file-utils \
		::x11/xfce4/xfce-mcs-manager

WANTLIB=	ICE SM X11 Xau Xdmcp Xdamage Xrender fontconfig freetype \
		Xcursor Xext Xfixes Xi Xcomposite Xinerama Xrandr expat \
		atk-1.0 gdk-x11-2.0 gdk_pixbuf-2.0 glib-2.0 m c z \
		gmodule-2.0 gobject-2.0 gtk-x11-2.0 pango-1.0 pcre \
		pangoft2-1.0 pangocairo-1.0 cairo glitz png \
		startup-notification-1 xfce4util

post-install:
	@sed -e 's,!!PREFIX!!,${TRUEPREFIX},' \
		-e 's,!!LOCALBASE!!,${LOCALBASE},' \
		${FILESDIR}/README.OpenBSD > ${WRKBUILD}/README.OpenBSD
	${INSTALL_DATA} ${WRKBUILD}/README.OpenBSD \
		${PREFIX}/share/xfce4/

.include <bsd.port.mk>
