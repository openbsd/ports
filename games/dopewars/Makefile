# $OpenBSD: Makefile,v 1.30 2005/11/03 18:28:55 naddy Exp $

COMMENT=	"game where you deal drugs on the streets of NY"

DISTNAME=	dopewars-1.5.7
PKGNAME=	${DISTNAME}p3
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dopewars/}

HOMEPAGE=	http://dopewars.sourceforge.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ncurses

MODULES+=	gettext

LIB_DEPENDS+=   glib-2.0.0.0::devel/glib2
BUILD_DEPENDS+= :pkgconfig-*:devel/pkgconfig

USE_GMAKE=	Yes
AUTOCONF_VERSION=2.13
CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS+= --enable-nls \
		 --enable-strict \
		 --disable-esd \
		 --disable-gui-server \
		 --disable-plugins \
		 --disable-sdl
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_ARGS+= --disable-gui-client
.else
LIB_DEPENDS+=	gmodule-2.0.0.0,gobject-2.0.0.0::devel/glib2 \
		atk-1.0.0.0::devel/atk \
		pango-1.0.0.0,pangox-1.0.0.0,pangoxft-1.0.0.0::devel/pango \
		gdk-x11-2.0.0.0,gdk_pixbuf-2.0.0.0,gtk-x11-2.0.0.0::x11/gtk+2
WANTLIB+=	X11 Xext Xft Xinerama Xrender fontconfig freetype m Xcursor
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/dopewars
	${INSTALL_DATA} ${WRKSRC}/doc/example-cfg \
		${PREFIX}/share/examples/dopewars/dopewars.cfg
	${INSTALL_DATA} /dev/null ${PREFIX}/share/examples/dopewars/dopewars.sco
	${PREFIX}/bin/dopewars -C ${PREFIX}/share/examples/dopewars/dopewars.sco

.include <bsd.port.mk>
