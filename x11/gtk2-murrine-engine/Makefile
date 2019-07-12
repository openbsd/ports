# $OpenBSD: Makefile,v 1.42 2019/07/12 20:51:12 sthen Exp $

COMMENT =	beautiful glass-like GTK+ 2.x engine and themes

GNOME_VERSION =	0.98.2
GNOME_PROJECT =	murrine
PKGNAME =	gtk2-murrine-engine-${GNOME_VERSION}
REVISION =	9
CATEGORIES =	x11

HOMEPAGE =	http://cimitan.com/murrine/

# GPLv2
PERMIT_PACKAGE =	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama Xrandr
WANTLIB += Xrender atk-1.0 cairo expat ffi fontconfig freetype fribidi
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB += gobject-2.0 graphite2 gthread-2.0 gtk-x11-2.0 harfbuzz iconv
WANTLIB += intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png pthread xcb xcb-render xcb-shm z

MASTER_SITES0 =	${HOMEPAGE}files/
DIST_SUBDIR =	murrine
DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		MurrinaBlu-0.32.tar.gz:0 \
		MurrineThemePack.tar.bz2:0 \
		MurrinaBlue.tar.bz2:0 \
		MurrinaChrome.tar.gz:0 \
		MurrinaCream.tar.gz:0 \
		MurrinaCandido.tar.gz:0 \
		MurrinaOranche_02.tar.gz:0 \
		MurrinaElement.tar.gz:0 \
		MurrinaFancyCandy.tar.bz2:0 \
		MurrinaOransun.tar.gz:0 \
		MurrinaTango.tar.bz2:0 \
		MurrinaVerdeOlivo.tar.bz2:0 \
		MurrinaAquaIsh.tar.bz2:0 \
		MurrinaGilouche.tar.bz2:0 \
		MurrinaLoveGray.tar.bz2:0

MODULES =	x11/gnome

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	devel/gettext,-runtime \
		x11/gtk+2

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS = --enable-animation \
		--disable-rgba

post-install:
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.{a,la}
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/
	cp -R ${WRKDIR}/Murrina* ${PREFIX}/share/themes/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/themes/*
# Fix numerous warnings triggered by outdated configuration options:
# https://bugs.launchpad.net/ubuntu/+source/murrine-themes/+bug/584941
	perl -pi -e 's/scrollbar_color.*=.*// ; s/hilight_ratio/hilight_shade/; s/gradients.*=.*//' \
		${PREFIX}/share/themes/*/gtk-2.0/gtkrc

.include <bsd.port.mk>
