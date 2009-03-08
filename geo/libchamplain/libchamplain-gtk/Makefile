# $OpenBSD: Makefile,v 1.3 2009/03/08 17:53:35 jasper Exp $

COMMENT=		Gtk+-widget wraper around libchamplain's ClutterActor

DISTNAME=		libchamplain-gtk-${VERSION}
PKGNAME=		${DISTNAME}p0

SHARED_LIBS +=  champlain-gtk-0.2    1.0      # .0.1

MODULES=		devel/gettext

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo clutter-cairo-0.8
WANTLIB += clutter-glx-0.8 expat fontconfig freetype gcrypt gdk-x11-2.0
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnutls
WANTLIB += gobject-2.0 gpg-error gthread-2.0 gtk-x11-2.0 json-glib-1.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread soup-2.4 tasn1 xml2 z

LIB_DEPENDS=		champlain-${API_VERSION}::geo/libchamplain/core \
			clutter-gtk-0.8::graphics/clutter/clutter-gtk

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/demos/.libs/launcher \
		${PREFIX}/bin/libchamplain-demo

.include <bsd.port.mk>
