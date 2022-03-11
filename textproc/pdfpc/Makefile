COMMENT=		presenter console with multi-monitor support

GH_ACCOUNT=		pdfpc
GH_PROJECT=		pdfpc
GH_TAGNAME=		v4.4.0
PKGNAME=		pdfpc-${GH_TAGNAME:S/v//:S/-/./:S/_/./}
REVISION=		0

CATEGORIES=		textproc

HOMEPAGE=		https://pdfpc.github.io/

# GPLv2+
PERMIT_PACKAGE=		Yes

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += gstbase-1.0 gstreamer-1.0 gstvideo-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 poppler-glib X11 intl harfbuzz

MODULES=		devel/cmake

BUILD_DEPENDS=		lang/vala

LIB_DEPENDS=		devel/libgee \
			multimedia/gstreamer1/plugins-base \
			print/poppler \
			x11/gtk+3

CONFIGURE_ARGS=		-DX11_LIBRARY_DIRS="${X11BASE}/lib"

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/man/pdfpcrc.in ${WRKSRC}/src/paths.in

post-install:
	mv ${PREFIX}/etc ${PREFIX}/share/examples/pdfpc

.include <bsd.port.mk>
