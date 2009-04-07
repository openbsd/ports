# $OpenBSD: Makefile,v 1.10 2009/04/07 12:34:53 ajacoutot Exp $

SHARED_ONLY =	Yes

COMMENT =	beautiful glass-like GTK+ 2.x engine and themes

VERSION =	0.90.3
DISTNAME =	murrine-${VERSION}
PKGNAME =	gtk2-murrine-engine-${VERSION}p0
CATEGORIES =	x11

HOMEPAGE =	http://cimitan.com/murrine/

MAINTAINER =	David Coppa <dcoppa@gmail.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes 
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_GNOME:=sources/murrine/0.90/}
MASTER_SITES0 =	${HOMEPAGE}files/
DIST_SUBDIR =	murrine
DISTFILES =	${DISTNAME}.tar.bz2 \
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

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1
WANTLIB += png z

MODULES =	devel/gettext \
		textproc/intltool

LIB_DEPENDS =	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2

USE_LIBTOOL =	Yes
USE_X11 =	Yes
USE_GMAKE =	Yes

CONFIGURE_STYLE =gnu 
CONFIGURE_ARGS = --enable-animation \
		--disable-rgba

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/themes/
	cp -R ${WRKDIR}/Murrina* ${PREFIX}/share/themes/
	@chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share/themes/*

.include <bsd.port.mk>
