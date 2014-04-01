# $OpenBSD: Makefile,v 1.30 2014/04/01 13:21:46 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	beautiful glass-like GTK+ 2.x engine and themes

GNOME_VERSION =	0.98.2
GNOME_PROJECT =	murrine
PKGNAME =	gtk2-murrine-engine-${GNOME_VERSION}
REVISION =	1
CATEGORIES =	x11

HOMEPAGE =	http://cimitan.com/murrine/

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

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

WANTLIB += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB += expat ffi fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB += gtk-x11-2.0 m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs stdc++ xcb xcb-render
WANTLIB += xcb-shm z

MODULES =	devel/gettext \
		x11/gnome

LIB_DEPENDS =	x11/gtk+2

CONFIGURE_STYLE =gnu
CONFIGURE_ARGS = --enable-animation \
		--disable-rgba

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/
	cp -R ${WRKDIR}/Murrina* ${PREFIX}/share/themes/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/themes/*
# Fix numerous warnings triggered by outdated configuration options:
# https://bugs.launchpad.net/ubuntu/+source/murrine-themes/+bug/584941
	perl -pi -e 's/scrollbar_color.*=.*// ; s/hilight_ratio/hilight_shade/; s/gradients.*=.*//' \
		${PREFIX}/share/themes/*/gtk-2.0/gtkrc
	rm ${PREFIX}/lib/gtk-2.0/2.10.0/engines/*.a

.include <bsd.port.mk>
