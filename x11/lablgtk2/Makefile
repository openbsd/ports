# $OpenBSD: Makefile,v 1.2 2009/06/16 06:13:19 sturm Exp $

COMMENT =	OCaml interface to GTK+2

V =		2.12.0
DISTNAME =	lablgtk-$V
PKGNAME =	lablgtk2-$Vp0
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
		freetype glib-2.0 glitz gio-2.0 gmodule-2.0 gobject-2.0 iconv \
		intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pixman-1 xml2 z

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2 \
		glade-2.0::devel/libglade2 \
		rsvg-2::x11/gnome/librsvg

FAKE_FLAGS =	BINDIR=${WRKINST}${PREFIX}/bin \
		INSTALLDIR=${WRKINST}${PREFIX}/lib/ocaml/lablgtk2 \
		DLLDIR=${WRKINST}${PREFIX}/lib/ocaml/stublibs

USE_X11 =	Yes
USE_GMAKE =	Yes
MODULES =	lang/ocaml

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	USE_CC=1 ${MODOCAML_NATIVE:S/Yes/USE_DOTOPT=1/:S/No//} \
		--without-gl --without-panel \
		--without-gnomecanvas --without-gnomeui \
		--without-gtkspell --without-gtksourceview --without-quartz

ALL_TARGET =	all ${MODOCAML_NATIVE:S/Yes/opt/:S/No//}

NO_REGRESS =	Yes

post-install:
		chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/lib/ocaml/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA} ${WRKDIST}/README ${PREFIX}/share/doc/lablgtk2
		${INSTALL_DATA_DIR} ${PREFIX}/lib/ocaml/site-lib/lablgtk2
		${INSTALL_DATA} ${WRKSRC}/META ${PREFIX}/lib/ocaml/site-lib/lablgtk2

.include <bsd.port.mk>
