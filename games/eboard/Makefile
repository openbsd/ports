# $OpenBSD: Makefile,v 1.31 2007/12/03 18:54:58 fgsch Exp $

COMMENT=	gtk+2 chess board interface

DISTNAME=	eboard-1.0.4
CATEGORIES=	games x11

HOMEPAGE=	http://www.bergo.eng.br/eboard/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB= 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 iconv \
		intl m pango-1.0 pangocairo-1.0 pangoft2-1.0 png pthread \
		stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eboard/}

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

USE_X11=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS+=--extra-flags="$(CXXFLAGS)"

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
