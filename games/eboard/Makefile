# $OpenBSD: Makefile,v 1.47 2013/08/09 19:04:49 ajacoutot Exp $

COMMENT=	gtk+2 chess board interface

DISTNAME=	eboard-1.1.1
CATEGORIES=	games x11
REVISION=	0

HOMEPAGE=	http://www.bergo.eng.br/eboard/

# GPL
PERMIT_PACKAGE_CDROM=   Yes

WANTLIB =	GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 c cairo expat fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 gthread-2.0 gtk-x11-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 pixman-1 png pthread \
		pthread-stubs sndio stdc++ xcb xcb-render xcb-shm z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eboard/}

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	x11/gtk+2

MODULES=	devel/gettext

USE_GROFF =	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix="${PREFIX}" --compiler="${CXX}" \
		--extra-flags="${CXXFLAGS}"

NO_TEST=	Yes

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
