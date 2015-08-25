# $OpenBSD: Makefile,v 1.50 2015/08/25 00:30:41 bentley Exp $

SHARED_ONLY=		Yes
DPB_PROPERTIES=		tag:kde3

COMMENT-main=		multilingual input method library
COMMENT-gtk=		uim for GTK+2
COMMENT-gtk3=		uim for GTK+3
COMMENT-kde=		uim for KDE3
COMMENT-qt=		uim for QT3
COMMENT-qt4=		uim for QT4

CATEGORIES=		inputmethods japanese chinese

V=			1.8.6
DISTNAME=		uim-$V
PKGNAME-main=		uim-$V
PKGNAME-gtk=		uim-gtk-$V
PKGNAME-gtk3=		uim-gtk3-$V
PKGNAME-kde=		uim-kde-$V
PKGNAME-qt=		uim-qt-$V
PKGNAME-qt4=		uim-qt4-$V
REVISION-gtk=		1
REVISION-gtk3=		1
REVISION-kde=		1
REVISION-main=		1
REVISION-qt=		1
REVISION-qt4=		1

MASTER_SITES=		https://github.com/uim/uim/releases/download/uim-$V/
HOMEPAGE=		https://github.com/uim/uim

SHARED_LIBS +=	gcroots              0.0      # .1.0
SHARED_LIBS +=	uim-scm              0.0      # .0.0
SHARED_LIBS +=	uim                  1.0      # .6.0
SHARED_LIBS +=	uim-custom           0.0      # .2.0

# BSD
PERMIT_PACKAGE_CDROM=	Yes

cWANTLIB += X11 Xext Xrender fontconfig freetype m
cWANTLIB += ${MODGETTEXT_WANTLIB}

MULTI_PACKAGES=		-main -gtk -gtk3 -kde -qt -qt4

MODULES=		devel/gettext \
			textproc/intltool \
			x11/qt4 \
			x11/kde # last on purpose

USE_GMAKE=		Yes

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			devel/desktop-file-utils

WANTLIB-main += ${cWANTLIB}
WANTLIB-main += Xft anthy anthydic c curses expat pthread-stubs stdc++
WANTLIB-main += util xcb z

LIB_DEPENDS-main=	${MODGETTEXT_LIB_DEPENDS} \
			inputmethods/anthy


WANTLIB-gtk += ${cWANTLIB}
WANTLIB-gtk += Xcomposite Xcursor Xdamage Xfixes Xi Xinerama Xrandr
WANTLIB-gtk += atk-1.0 c cairo expat ffi gcroots gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-gtk += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 graphite2
WANTLIB-gtk += gthread-2.0 gtk-x11-2.0 harfbuzz pango-1.0 pangocairo-1.0
WANTLIB-gtk += pangoft2-1.0 pcre pixman-1 png pthread pthread-stubs
WANTLIB-gtk += uim uim-custom uim-scm xcb xcb-render xcb-shm z

LIB_DEPENDS-gtk=	inputmethods/uim \
			x11/gtk+2

WANTLIB-gtk3 += ${cWANTLIB}
WANTLIB-gtk3 += ICE SM Xcomposite Xcursor Xdamage Xfixes Xi Xinerama
WANTLIB-gtk3 += Xrandr atk-1.0 atk-bridge-2.0 atspi c cairo cairo-gobject
WANTLIB-gtk3 += dbus-1 expat ffi gcroots gdk-3 gdk_pixbuf-2.0 gio-2.0
WANTLIB-gtk3 += glib-2.0 gmodule-2.0 gobject-2.0 graphite2 gthread-2.0
WANTLIB-gtk3 += gtk-3 harfbuzz pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-gtk3 += pcre pixman-1 png pthread pthread-stubs uim uim-custom
WANTLIB-gtk3 += uim-scm xcb xcb-render xcb-shm z

LIB_DEPENDS-gtk3=	inputmethods/uim \
			x11/gtk+3

WANTLIB-kde += ${cWANTLIB} ${KDE}/kdecore ${KDE}/kdeui
WANTLIB-kde += DCOP GL ICE SM X11-xcb Xau Xcursor Xdamage Xdmcp Xfixes
WANTLIB-kde += Xft Xi Xinerama Xmu Xrandr Xt Xxf86vm art_lgpl_2 drm
WANTLIB-kde += expat gcroots glapi idn jpeg kdefx lcms mng png pthread
WANTLIB-kde += pthread-stubs qt-mt stdc++ uim uim-scm util xcb xcb-dri2
WANTLIB-kde += xcb-glx z

LIB_DEPENDS-kde=	inputmethods/uim \
			x11/kde/libs3

WANTLIB-qt += ${cWANTLIB} ${MODQT3_WANTLIB}
WANTLIB-qt += GL ICE SM X11-xcb Xau Xcursor Xdamage Xdmcp Xfixes
WANTLIB-qt += Xft Xi Xinerama Xmu Xrandr Xt Xxf86vm c drm expat gcroots
WANTLIB-qt += glapi jpeg lcms mng png pthread pthread-stubs stdc++
WANTLIB-qt += uim uim-custom uim-scm xcb xcb-dri2 xcb-glx z

LIB_DEPENDS-qt=		${MODQT3_LIB_DEPENDS} \
			${MODGETTEXT_LIB_DEPENDS} \
			inputmethods/uim

WANTLIB-qt4 += ${cWANTLIB} ${MODQT4_WANTLIB}
WANTLIB-qt4 += ICE QtGui SM Xi Xinerama c pthread stdc++ uim
WANTLIB-qt4 += uim-custom uim-scm

LIB_DEPENDS-qt4=	${MODQT4_LIB_DEPENDS} \
			${MODGETTEXT_LIB_DEPENDS} \
			inputmethods/uim

AUTOCONF_VERSION=	2.68
CONFIGURE_STYLE=	autoconf

CONFIGURE_ENV=		CPPFLAGS='-I${MODQT3_INCDIR} -I${LOCALBASE}/include -I${X11BASE}/include' \
			LDFLAGS='-L${MODQT3_LIBDIR} -L${LOCALBASE}/lib -L${X11BASE}/lib' \
			ac_cv_prog_HOST_MOC=${MODQT3_MOC} \
			ac_cv_prog_HOST_UIC=${MODQT3_MOC}

CONFIGURE_ARGS=		${CONFIGURE_SHARED} \
			--with-qt \
			--with-qt-immodule \
			--with-qt4 \
			--with-qt4-immodule \
			--with-anthy-utf8

post-install:
	rm ${PREFIX}/lib/uim/plugin/*.{a,la}
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/immodules/*.{a,la}
	rm ${PREFIX}/lib/gtk-3.0/3.0.0/immodules/*.{a,la}
	rm ${PREFIX}/lib/kde3/*.{a,la}

.include <bsd.port.mk>
