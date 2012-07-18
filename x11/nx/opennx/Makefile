# $OpenBSD: Makefile,v 1.28 2012/07/18 08:47:34 jasper Exp $

COMMENT=		OSS replacement for the Nomachine nxclient

DISTNAME=		opennx-0.16.0.709
REVISION=		0

CATEGORIES=		sysutils

HOMEPAGE=		http://opennx.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opennx/}

USE_LIBTOOL=		Yes

WANTLIB += GL ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB += Xext Xfixes Xi Xinerama Xmu Xrandr Xrender Xt Xxf86vm
WANTLIB += atk-1.0 c cairo crypto curl drm expat ffi fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 gtk-x11-2.0 idn
WANTLIB += jpeg m mspack pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread pthread-stubs sndio ssl stdc++
WANTLIB += tiff usbhid wx_base wx_base_net wx_base_xml wx_gtk2_adv
WANTLIB += wx_gtk2_core wx_gtk2_html wx_gtk2_qa wx_gtk2_richtext
WANTLIB += wx_gtk2_xrc xcb xcb-render xcb-shm z

MODULES=		devel/gettext

LIB_DEPENDS=		x11/wxWidgets \
			net/curl
BUILD_DEPENDS=		archivers/zip \
			devel/bison \
			net/samba \
			print/cups
RUN_DEPENDS=		devel/desktop-file-utils \
			x11/nx/nxproxy \
			x11/nx/nxssh

WRKDIST =		${WRKDIR}/opennx-0.16
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/opennxApp.cpp \
			${WRKSRC}/Makefile.in
	perl -pi -e 's,/usr/NX,${PREFIX}/NX,g' \
		${WRKSRC}/extres/xdg/innovidata-opennx*.desktop

post-install:
	ln -s ${TRUEPREFIX}/NX/bin/opennx ${PREFIX}/bin/opennx
	rm ${PREFIX}/share/applications/innovidata-opennx.directory

.include <bsd.port.mk>
