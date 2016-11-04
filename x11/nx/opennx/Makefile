# $OpenBSD: Makefile,v 1.40 2016/11/04 11:35:21 sthen Exp $

COMMENT=		OSS replacement for the Nomachine nxclient

DISTNAME=		opennx-0.16.0.729
CATEGORIES=		sysutils
REVISION=		5

HOMEPAGE=		http://opennx.sourceforge.net/
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=opennx/}


WANTLIB += ICE SDL SM X11 Xau Xcomposite Xcursor Xdamage Xext Xfixes Xi
WANTLIB += Xinerama Xmu Xrandr Xrender Xt Xxf86vm atk-1.0 c cairo crypto
WANTLIB += curl expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB += gthread-2.0 gtk-x11-2.0 harfbuzz jpeg m mspack nghttp2
WANTLIB += pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png
WANTLIB += pthread pthread-stubs sndio ssl stdc++ tiff usbhid wx_base
WANTLIB += wx_base_net wx_base_xml wx_gtk2_adv wx_gtk2_core wx_gtk2_html
WANTLIB += wx_gtk2_qa wx_gtk2_richtext wx_gtk2_xrc xcb xcb-render
WANTLIB += xcb-shm z

MODULES=		devel/gettext

LIB_DEPENDS=		x11/wxWidgets \
			net/curl
BUILD_DEPENDS=		archivers/zip \
			devel/bison \
			net/samba

# configure checks for cupsd(8)
BUILD_DEPENDS +=	print/cups

RUN_DEPENDS=		devel/desktop-file-utils \
			x11/gtk+3,-guic \
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
