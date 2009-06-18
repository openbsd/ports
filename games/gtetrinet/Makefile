# $OpenBSD: Makefile,v 1.11 2009/06/18 01:07:52 sthen Exp $

MULTI_PACKAGES=	-main -themes

COMMENT-main=	tetrinet client
COMMENT-themes=	collection of gtetrinet themes
DISTNAME=	gtetrinet-0.7.11
PKGNAME-main=	${DISTNAME}p8
PKGNAME-themes=	gtetrinet-themes-20070623p1
CATEGORIES=	x11 games

HOMEPAGE=	http://gtetrinet.sourceforge.net/

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

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
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		textproc/intltool \
			devel/gconf2

LIB_DEPENDS-main=	${MODGCONF2_LIB_DEPENDS} \
			gnome-2::x11/gnome/libgnome \
			gnomeui-2::x11/gnome/libgnomeui \
			esd:esound->=0.2.38:audio/esound
LIB_DEPENDS-themes=
RUN_DEPENDS-main=	${RUN_DEPENDS} \
			:desktop-file-utils-*:devel/desktop-file-utils
RUN_DEPENDS-themes=	::games/gtetrinet
PKG_ARCH-themes=	*

WANTLIB-main += ICE ORBit-2 SM X11 Xau Xcomposite Xcursor Xdamage Xdmcp
WANTLIB-main += Xext Xfixes Xi Xinerama Xrandr Xrender art_lgpl_2 atk-1.0
WANTLIB-main += audiofile bonobo-2 bonobo-activation bonoboui-2 c cairo
WANTLIB-main += dbus-1 expat fontconfig freetype gailutil gdk-x11-2.0
WANTLIB-main += gdk_pixbuf-2.0 gio-2.0 glib-2.0 glitz gmodule-2.0 gnome-keyring
WANTLIB-main += gnomecanvas-2 gnomevfs-2 gobject-2.0 gthread-2.0 gtk-x11-2.0
WANTLIB-main += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += pixman-1 png popt pthread sndio xml2 z
WANTLIB-themes =

MODGCONF2_SCHEMAS_DIR= gtetrinet
MODGCONF2_LIBDEP= No

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=--enable-ipv6

CONFIGURE_ENV=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

FAKE_FLAGS=	gamesdir=${PREFIX}/bin

USE_GMAKE=	Yes
USE_X11=	Yes
NO_REGRESS=	Yes

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/schemas/gtetrinet
	@mv ${WRKINST}${SYSCONFDIR}/gnome/gconf/schemas/gtetrinet.schemas \
	    ${PREFIX}/share/schemas/gtetrinet
	@rm -rf ${WRKINST}${SYSCONFDIR}/gnome
.for THEME in ${THEMES}
	@tar xzf ${DISTDIR}/gtet-theme-${THEME}${EXTRACT_SUFX} -C \
	    ${PREFIX}/share/gtetrinet/themes
.endfor

.include <bsd.port.mk>

CONFIGURE_ARGS+=--sysconfdir=${SYSCONFDIR}/gnome
