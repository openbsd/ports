# $OpenBSD: Makefile,v 1.13 2010/10/24 21:15:33 ajacoutot Exp $

COMMENT =	OCaml interface to GTK+2

V =		2.14.2
DISTNAME =	lablgtk-$V
PKGNAME =	lablgtk2-$V
REVISION=	0
CATEGORIES =	x11 devel

HOMEPAGE =	http://wwwfun.kurims.kyoto-u.ac.jp/soft/olabl/lablgtk.html
MASTER_SITES =	http://wwwfun.kurims.kyoto-u.ac.jp/soft/olabl/dist/

# LGPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig \
		freetype glib-2.0 gio-2.0 gmodule-2.0 gobject-2.0 \
		gthread-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0 png \
		pixman-1 pthread-stubs xcb xcb-render xcb-render-util xml2 \
		gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0 z glade-2.0 rsvg-2

LIB_DEPENDS =	::x11/gtk+2 \
		::devel/libglade2 \
		::x11/gnome/librsvg

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
		--without-gtksourceview2 --without-gtkspell --without-quartz

ALL_TARGET =	all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//}

NO_REGRESS =	Yes

post-install:
		chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/ocaml/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib/lablgtk2
		${INSTALL_DATA} ${WRKSRC}/META ${PREFIX}/lib/ocaml/site-lib/lablgtk2

.include <bsd.port.mk>
