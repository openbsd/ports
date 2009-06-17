# $OpenBSD: Makefile,v 1.35 2009/06/17 01:53:33 sthen Exp $

COMMENT=	gtk+2 chess board interface

DISTNAME=	eboard-1.0.4
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games x11

HOMEPAGE=	http://www.bergo.eng.br/eboard/

# GPL
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

WANTLIB= 	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 \
		png pthread stdc++ z

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=eboard/}

EXTRACT_SUFX=	.tar.bz2

LIB_DEPENDS=	gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2

MODULES=	devel/gettext

USE_X11=	Yes
CONFIGURE_STYLE=simple
CONFIGURE_ARGS=	--prefix="${PREFIX}" --compiler="${CXX}" \
		--extra-flags="${CXXFLAGS}"

NO_REGRESS=	Yes

DOCS=	Crafty.txt FICS-Timeseal.txt GNUChess4.txt GNUChess5.txt \
	Scripts.txt Sjeng.txt Themes.txt

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/eboard
	cd ${WRKSRC}/Documentation; ${INSTALL_DATA} ${DOCS} \
		${PREFIX}/share/doc/eboard

.include <bsd.port.mk>
