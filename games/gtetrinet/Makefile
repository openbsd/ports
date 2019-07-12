# $OpenBSD: Makefile,v 1.34 2019/07/12 20:46:19 sthen Exp $

MULTI_PACKAGES=	-main -themes

COMMENT-main=	tetrinet client
COMMENT-themes=	collection of gtetrinet themes
DISTNAME=	gtetrinet-0.7.11
PKGNAME-main=	${DISTNAME}
REVISION-main=	22
PKGNAME-themes=	gtetrinet-themes-20070623
REVISION-themes=3
CATEGORIES=	x11 games

HOMEPAGE=	http://gtetrinet.sourceforge.net/

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/gtetrinet/0.7/}
MASTER_SITES0=	${HOMEPAGE:=themes/}

DISTFILES=	${DISTNAME}${EXTRACT_SUFX}
EXTRACT_ONLY=	${DISTNAME}${EXTRACT_SUFX}

# themes from the homepage that are not available as of 2007-06-23:
# chronos edge ffviii gameboy hivis medieval james james-mono tetrinetv2
# win-tetrinet
THEMES=		TuxNBlue iconic matrix mmr tux tetrinetlv2 wield

.for THEME in ${THEMES}
DISTFILES+=	gtet-theme-${THEME}${EXTRACT_SUFX}:0
.endfor

# GPLv2
PERMIT_PACKAGE=	Yes

MODULES=		textproc/intltool \
			devel/gconf2

LIB_DEPENDS-main=	${MODGCONF2_LIB_DEPENDS} \
			x11/gnome/libgnome \
			x11/gnome/libgnomeui
LIB_DEPENDS-themes=
WANTLIB-themes=
RUN_DEPENDS-main=	${RUN_DEPENDS} \
			devel/desktop-file-utils
RUN_DEPENDS-themes=	games/gtetrinet
PKG_ARCH-themes=	*

WANTLIB-main += ${MODGCONF2_WANTLIB}
WANTLIB-main += ICE ORBit-2 SM X11 Xcomposite Xcursor Xdamage Xext
WANTLIB-main += Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB-main += bonobo-2 bonobo-activation bonoboui-2 c cairo fontconfig
WANTLIB-main += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB-main += gmodule-2.0 gnome-2 gnomecanvas-2 gnomeui-2 gnomevfs-2
WANTLIB-main += gobject-2.0 gthread-2.0 gtk-x11-2.0 intl pango-1.0
WANTLIB-main += pangocairo-1.0 pangoft2-1.0 popt pthread z

WANTLIB-themes =

MODGCONF2_SCHEMAS_DIR= gtetrinet
MODGCONF2_LIBDEP= No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-ipv6

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	gamesdir=${PREFIX}/bin \
		schemadir=${PREFIX}/share/schemas/gtetrinet

USE_GMAKE=	Yes
NO_TEST=	Yes

post-install:
.for THEME in ${THEMES}
	@tar xzf ${DISTDIR}/gtet-theme-${THEME}${EXTRACT_SUFX} -C \
	    ${PREFIX}/share/gtetrinet/themes
.endfor

.include <bsd.port.mk>
