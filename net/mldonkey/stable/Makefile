# $OpenBSD: Makefile,v 1.41 2011/04/16 12:10:07 sthen Exp $

COMMENT =	e-donkey client
DISTNAME =	mldonkey-3.0.7
CATEGORIES =	net

REVISION =	0

HOMEPAGE =	http://mldonkey.sourceforge.net/Main_Page
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=mldonkey/}

MAINTAINER =	David Coppa <dcoppa@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP =	Yes
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes

EXTRACT_SUFX =		.tar.bz2

WANTLIB +=		GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext
WANTLIB +=		Xfixes Xi Xinerama Xrandr Xrender Xxf86vm
WANTLIB +=		atk-1.0 bz2 c cairo charset curses drm expat
WANTLIB +=		fontconfig freetype gd gdk-x11-2.0
WANTLIB +=		gdk_pixbuf-2.0 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB +=		gobject-2.0 gthread-2.0 gtk-x11-2.0 iconv intl
WANTLIB +=		jpeg m magic pixman-1 pango-1.0 pangocairo-1.0
WANTLIB +=		pangoft2-1.0 png pthread pthread-stubs rsvg-2
WANTLIB +=		stdc++ xcb xcb-render xcb-shm z

CONFIGURE_STYLE =	autoconf no-autoheader
AUTOCONF_DIR =		${WRKSRC}/config
AUTOCONF_VERSION =	2.67
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/config

CONFIGURE_ARGS +=	--enable-gui=newgui2
CONFIGURE_ENV +=	CPPFLAGS='-I${LOCALBASE}/include/libpng\
			-I${LOCALBASE}/include -I${X11BASE}/include'
CONFIGURE_ENV +=	LDFLAGS='-L${LOCALBASE}/lib -L${X11BASE}/lib'

USE_GMAKE =	Yes
MODULES =	lang/ocaml
BUILD_DEPENDS =	x11/lablgtk2
LIB_DEPENDS =	x11/gnome/librsvg \
		archivers/bzip2 \
		graphics/gd \
		devel/libmagic \
		x11/gtk+2

FAKE_FLAGS =	MODOCAML_NATIVE=${MODOCAML_NATIVE}
NO_REGRESS =	Yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/mldonkey
	cp -R ${WRKDIST}/distrib ${PREFIX}/share/mldonkey/
	@${strip_binaries}

.include <bsd.port.mk>

.if ${MODOCAML_NATIVE:L} == "yes"
strip_binaries=cd ${PREFIX}/bin && strip mlnet mlgui mlnet+gui
.else
strip_binaries=:
.endif
