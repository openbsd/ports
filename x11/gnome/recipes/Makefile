# $OpenBSD: Makefile,v 1.8 2017/05/27 15:08:43 jasper Exp $

COMMENT =		recipe manager for GNOME

GNOME_PROJECT =		gnome-recipes
GNOME_VERSION =		1.4.4

CATEGORIES =		misc

# GPLv3
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		devel/dconf \
			devel/meson \
			lang/python \
			x11/gnome

WANT_CXX =		base gcc
MODGCC4_LANGS =		c

MODPY_RUNDEP =		No
MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

WANTLIB += c cairo canberra gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gnome-autoar-0 gobject-2.0 gspell-1 gtk-3 intl m pango-1.0
WANTLIB += pangocairo-1.0 soup-2.4
WNATLIB += ${LIBCXX}

LIB_DEPENDS =		audio/libcanberra \
			devel/libsoup \
			textproc/gspell \
			x11/gnome/autoar
RUN_DEPENDS =		archivers/gtar

MODGNOME_TOOLS =	desktop-file-utils gobject-introspection \
			gtk-update-icon-cache shared-mime-info vala

MODPY_ADJ_FILES =	meson_post_install.py \
			src/list_to_c.py

# meson detects 'cc' in ${WRKBUILD}/bin/ as the compiler to use.
# that's good.
# it then writes 'cc' into build.ninja which doesn't use the PATH
# and ands up calling /usr/bin/cc instead of ${WRKBUILD}/bin/cc.
# not good.
pre-build:
	sed -i 's, cc , egcc ,' ${WRKBUILD}/build.ninja

.include <bsd.port.mk>
