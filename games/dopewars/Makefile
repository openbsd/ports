# $OpenBSD: Makefile,v 1.43 2009/06/28 21:46:38 sthen Exp $

COMMENT=	game where you deal drugs on the streets of NY

DISTNAME=	dopewars-1.5.12
PKGNAME=	${DISTNAME}p2
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dopewars/}

HOMEPAGE=	http://dopewars.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MODULES+=	devel/gettext

LIB_DEPENDS+=   gio-2.0,glib-2.0::devel/glib2

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --enable-nls \
		 --enable-strict \
		 --without-esd \
		 --disable-gui-server \
		 --disable-plugins \
		 --disable-sdl \
		 --localstatedir="/var/games"
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --disable-gui-client
.else
USE_X11=	Yes
LIB_DEPENDS+=	gdk-x11-2.0,gdk_pixbuf-2.0,gtk-x11-2.0::x11/gtk+2
WANTLIB+=	X11 Xext Xrender Xrandr expat fontconfig freetype m z cairo \
		Xau Xcomposite Xcursor Xdamage Xdmcp Xfixes Xi Xinerama \
		glitz gmodule-2.0 gobject-2.0 atk-1.0 pango-1.0 \
		pangoft2-1.0 pangocairo-1.0 pixman-1 png
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dopewars
	${INSTALL_DATA} ${WRKSRC}/doc/example-cfg \
		${PREFIX}/share/examples/dopewars/dopewars.cfg
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/dopewars/dopewars.sco
	${PREFIX}/bin/dopewars -C ${PREFIX}/share/examples/dopewars/dopewars.sco

.include <bsd.port.mk>
