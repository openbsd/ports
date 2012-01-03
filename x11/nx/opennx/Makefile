# $OpenBSD: Makefile,v 1.21 2012/01/03 16:46:36 sebastia Exp $

COMMENT=		OSS replacement for Nomachine's nxclient

DISTNAME=		opennx-0.16.0.658

CATEGORIES=		sysutils

HOMEPAGE=		http://opennx.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opennx/}

USE_LIBTOOL=		Yes

WANTLIB += GL ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 c cairo drm expat fontconfig freetype gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 jpeg m mspack pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png pthread
WANTLIB += pthread-stubs sndio stdc++ tiff usbhid wx_base wx_base_net
WANTLIB += wx_base_xml wx_gtk2_adv wx_gtk2_core wx_gtk2_html wx_gtk2_qa
WANTLIB += wx_gtk2_richtext wx_gtk2_xrc xcb xcb-render xcb-shm
WANTLIB += z

MODULES=		devel/gettext

LIB_DEPENDS=		x11/wxWidgets
BUILD_DEPENDS=		archivers/zip \
			devel/bison \
			net/samba \
			print/cups \
			security/opensc
RUN_DEPENDS=		devel/desktop-file-utils \
			print/cups \
			security/opensc \
			x11/nx/nxproxy \
			x11/nx/nxssh

WRKDIST =		${WRKDIR}/opennx-0.16
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

DOT_DESKTOP=		innovidata-opennx-admin.desktop \
			innovidata-opennx-wizard.desktop \
			innovidata-opennx.desktop

pre-configure:
	${SUBST_CMD} ${WRKSRC}/opennxApp.cpp \
			${WRKSRC}/Makefile.in

post-build:
	cd ${WRKSRC}/extres/xdg && \
		${SUBST_CMD} ${DOT_DESKTOP}

post-install:
	ln -s ${TRUEPREFIX}/NX/bin/opennx ${PREFIX}/bin/opennx
	rm ${PREFIX}/share/applications/*beforesubst \
		${PREFIX}/share/applications/*orig

.include <bsd.port.mk>
