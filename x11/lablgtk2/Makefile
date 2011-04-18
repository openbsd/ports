# $OpenBSD: Makefile,v 1.17 2011/04/18 05:30:12 dcoppa Exp $

COMMENT =	OCaml interface to GTK+2

V =		2.14.2
DISTNAME =	lablgtk-$V
PKGNAME =	lablgtk2-$V
REVISION =	3
CATEGORIES =	x11 devel

HOMEPAGE =	http://lablgtk.forge.ocamlcore.org/
MASTER_SITES =	https://forge.ocamlcore.org/frs/download.php/561/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glade-2.0 glib-2.0 gmodule-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 gtksourceview-2.0 m pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread-stubs
WANTLIB += rsvg-2 xcb xcb-render xcb-shm xml2 z

LIB_DEPENDS =	x11/gtk+2 \
		devel/libglade2 \
		x11/gtksourceview \
		x11/gnome/librsvg

FAKE_FLAGS =	BINDIR=${WRKINST}${PREFIX}/bin \
		INSTALLDIR=${WRKINST}${PREFIX}/lib/ocaml/lablgtk2 \
		DLLDIR=${WRKINST}${PREFIX}/lib/ocaml/stublibs

USE_GMAKE =	Yes
MODULES =	lang/ocaml \
		devel/gettext

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	USE_CC=1 ${MODOCAML_NATIVE:S/Yes/USE_DOTOPT=1/:S/No//} \
		--without-gl --without-panel \
		--without-gnomecanvas --without-gnomeui --without-gtksourceview \
		--without-gtkspell --without-quartz

ALL_TARGET =	all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//}

NO_REGRESS =	Yes

post-install:
		chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/ocaml/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib/lablgtk2
		${INSTALL_DATA} ${WRKSRC}/META ${PREFIX}/lib/ocaml/site-lib/lablgtk2

.include <bsd.port.mk>
