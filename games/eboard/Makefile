# $OpenBSD: Makefile,v 1.54 2019/07/12 21:02:20 sthen Exp $

COMMENT=	gtk+2 chess board interface

DISTNAME=	eboard-1.1.1
CATEGORIES=	games x11
REVISION=	4

HOMEPAGE=	http://www.bergo.eng.br/eboard/

# GPL
PERMIT_PACKAGE=	Yes

WANTLIB =	X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama \
		Xrandr Xrender atk-1.0 c cairo fontconfig freetype \
		gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 \
		gobject-2.0 gtk-x11-2.0 intl m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png pthread \
		sndio ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eboard/}

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	x11/gtk+2

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
