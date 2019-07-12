# $OpenBSD: Makefile,v 1.67 2019/07/12 20:47:14 sthen Exp $

DPB_PROPERTIES=		tag:kde3

COMMENT-main=		multilingual input method library
COMMENT-gtk=		uim for GTK+2
COMMENT-gtk3=		uim for GTK+3
COMMENT-kde=		uim for KDE3
COMMENT-qt=		uim for QT3
COMMENT-qt4=		uim for QT4

CATEGORIES=		inputmethods japanese chinese

V=			1.8.8
DISTNAME=		uim-$V
PKGNAME-main=		uim-$V
PKGNAME-gtk=		uim-gtk-$V
PKGNAME-gtk3=		uim-gtk3-$V
PKGNAME-kde=		uim-kde-$V
PKGNAME-qt=		uim-qt-$V
PKGNAME-qt4=		uim-qt4-$V

REVISION-main=		0
REVISION-gtk3=		0
REVISION-qt4=		0

MASTER_SITES=		https://github.com/uim/uim/releases/download/$V/
HOMEPAGE=		https://github.com/uim/uim

SHARED_LIBS +=	uim-scm              0.0      # .0.0
SHARED_LIBS +=	uim                  1.1      # .6.0
SHARED_LIBS +=	uim-custom           0.0      # .2.0

# BSD
PERMIT_PACKAGE=	Yes

cWANTLIB += X11 Xext Xrender fontconfig freetype iconv intl m

COMPILER =		base-clang ports-gcc base-gcc

MULTI_PACKAGES=		-main -gtk -gtk3 -kde -qt -qt4

MODULES=		textproc/intltool \
			x11/qt4 \
			x11/kde # last on purpose

USE_GMAKE=		Yes

RUN_DEPENDS-main=	devel/desktop-file-utils

WANTLIB-main += ${cWANTLIB} ${COMPILER_LIBCXX}
WANTLIB-main += Xft anthy anthydic c curses edit expat gcroots
WANTLIB-main += sqlite3 util xcb z lzma m17n m17n-core xml2

LIB_DEPENDS-main=	inputmethods/anthy \
			devel/libgcroots \
			misc/m17n/lib

WANTLIB-gtk += ${cWANTLIB}
WANTLIB-gtk += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr
WANTLIB-gtk += atk-1.0 c cairo expat ffi gcroots gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-gtk += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-gtk += gthread-2.0 gtk-x11-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-gtk += pangoft2-1.0 pcre pixman-1 png pthread fribidi
WANTLIB-gtk += uim uim-custom uim-scm xcb xcb-render xcb-shm z

LIB_DEPENDS-gtk=	inputmethods/uim \
			x11/gtk+2

WANTLIB-gtk3 += ${cWANTLIB}
WANTLIB-gtk3 += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama
WANTLIB-gtk3 += Xrandr atk-1.0 atk-bridge-2.0 c cairo cairo-gobject
WANTLIB-gtk3 += expat ffi gcroots gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-gtk3 += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB-gtk3 += gtk-3 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gtk3 += pcre pixman-1 png pthread uim uim-custom fribidi
WANTLIB-gtk3 += uim-scm xcb xcb-render xcb-shm z epoxy

LIB_DEPENDS-gtk3=	inputmethods/uim \
			x11/gtk+3

WANTLIB-kde += ${cWANTLIB} ${KDE}/kdecore ${KDE}/kdeui
WANTLIB-kde += DCOP GL ICE SM X11-xcb Xcursor Xdamage Xfixes
WANTLIB-kde += Xft Xi Xinerama Xmu Xrandr Xt Xxf86vm art_lgpl_2 drm
WANTLIB-kde += expat gcroots glapi idn jpeg kdefx lcms mng png pthread
WANTLIB-kde += qt-mt ${COMPILER_LIBCXX} uim uim-scm util xcb xcb-dri2
WANTLIB-kde += xcb-dri3 xcb-present xcb-sync xcb-xfixes xshmfence
WANTLIB-kde += xcb-glx z

LIB_DEPENDS-kde=	inputmethods/uim \
			x11/kde/libs3

WANTLIB-qt += ${cWANTLIB} ${MODQT3_WANTLIB}
WANTLIB-qt += GL ICE SM X11-xcb Xcursor Xdamage Xfixes
WANTLIB-qt += Xft Xi Xinerama Xmu Xrandr Xt Xxf86vm c drm expat gcroots
WANTLIB-qt += glapi jpeg lcms mng png pthread ${COMPILER_LIBCXX}
WANTLIB-qt += uim uim-custom uim-scm xcb xcb-dri2 xcb-glx z
WANTLIB-qt += xcb-dri3 xcb-present xcb-sync xcb-xfixes xshmfence

LIB_DEPENDS-qt=		${MODQT3_LIB_DEPENDS} \
			inputmethods/uim

WANTLIB-qt4 += ${cWANTLIB} ${MODQT4_WANTLIB}
WANTLIB-qt4 += ICE QtGui SM Xi Xinerama c pthread ${COMPILER_LIBCXX} uim
WANTLIB-qt4 += uim-custom uim-scm replace

LIB_DEPENDS-qt4=	${MODQT4_LIB_DEPENDS} \
			net/samba,-util \
			inputmethods/uim

AUTOCONF_VERSION=	2.69
CONFIGURE_STYLE=	autoconf

CONFIGURE_ENV=		CPPFLAGS='-I${MODQT3_INCDIR} -I${LOCALBASE}/include -I${X11BASE}/include' \
			LDFLAGS='-L${MODQT3_LIBDIR} -L${LOCALBASE}/lib -L${X11BASE}/lib' \
			ac_cv_prog_HOST_MOC=${MODQT3_MOC} \
			ac_cv_prog_HOST_UIC=${MODQT3_MOC}

CONFIGURE_ARGS=		--with-qt \
			--with-qt-immodule \
			--with-qt4 \
			--with-qt4-immodule \
			--with-anthy-utf8 \
			--with-libgcroots

post-install:
	rm ${PREFIX}/lib/uim/plugin/*.{a,la}
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/immodules/*.{a,la}
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/immodules/*.{a,la}
	rm ${PREFIX}/lib/kde3/*.{a,la}

.include <bsd.port.mk>
