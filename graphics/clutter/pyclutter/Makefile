# $OpenBSD: Makefile,v 1.2 2009/04/26 11:01:04 ajacoutot Exp $

COMMENT=		python bindings for Clutter

DISTNAME=		pyclutter-${MAJOR}.2
PKGNAME=		py-clutter-${MAJOR}.2

MASTER_SITES=		${MASTER_SITES_CLUTTER:=pyclutter/${MAJOR}/}

MODULES=		devel/gettext \
			lang/python

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo clutter-glx-0.8
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 gstaudio-0.10
WANTLIB += gstbase-0.10 gstinterfaces-0.10 gstreamer-0.10 gstvideo-0.10
WANTLIB += gthread-2.0 gtk-x11-2.0 json-glib-1.0 m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pcre pixman-1 png xml2 z

LIB_DEPENDS=		clutter-cairo-0.8::graphics/clutter/clutter-cairo \
			clutter-gst-0.8::graphics/clutter/clutter-gst \
			clutter-gtk-0.8::graphics/clutter/clutter-gtk

BUILD_DEPENDS+= 	${RUN_DEPENDS}
RUN_DEPENDS=		::x11/py-gtk2

CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--with-cluttercairo=yes \
			--with-cluttergst=yes \
			--with-cluttergtk=yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/py-clutter
	${INSTALL_DATA} ${WRKSRC}/examples/*.py \
		${PREFIX}/share/examples/py-clutter

.include <bsd.port.mk>
