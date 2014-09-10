# $OpenBSD: Makefile,v 1.45 2014/09/10 19:47:17 jca Exp $

COMMENT=		GNU editor: extensible, customizable, self-documenting

VERSION=		24.3
DISTNAME=		emacs-${VERSION}
REVISION=		4

CATEGORIES=		editors

HOMEPAGE=		https://www.gnu.org/software/emacs/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ncurses ossaudio pthread execinfo gnutls xml2

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}

USE_GMAKE=		Yes

FLAVORS=		athena gtk2 gtk3 no_x11
FLAVOR?=		gtk3

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux
CONFIGURE_ARGS=		--build="${GCCARCH}" \
			--without-compress-info

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -DHAVE_SOUND" \
			LDFLAGS="-L${LOCALBASE}/lib -nopie"
CFLAGS+=		-fno-pie

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS=		GCCARCH VERSION

MODULES=		devel/gettext
LIB_DEPENDS=		devel/libexecinfo security/gnutls textproc/libxml

.if ${FLAVOR} == "no_x11"
CONFIGURE_ARGS+=	--without-x \
			--without-dbus \
			--without-gconf \
			--without-gsettings
.else
LIB_DEPENDS+=		x11/dbus \
			x11/gnome/librsvg \
			devel/gconf2 \
			graphics/jpeg \
			graphics/png \
			graphics/tiff \
			graphics/giflib \
			graphics/ImageMagick
RUN_DEPENDS+=		devel/desktop-file-utils \
			devel/xdg-utils \
			x11/gtk+2,-guic
WANTLIB+=		dbus-1 rsvg-2 gio-2.0 gdk_pixbuf-2.0 gobject-2.0 \
			glib-2.0 gconf-2 cairo png jpeg tiff gif z \
			MagickWand MagickCore
. if ${FLAVOR} == "athena"
CONFIGURE_ARGS+=	--with-x-toolkit=athena
LIB_DEPENDS+=		x11/Xaw3d
WANTLIB+=		ICE SM X11 Xaw3d Xext Xft Xmu Xpm Xrender Xt \
			expat fontconfig freetype
. elif ${FLAVOR} == "gtk2"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk2
LIB_DEPENDS+=		x11/gtk+2
WANTLIB+=		ICE SM X11 Xcomposite Xcursor Xdamage Xext \
			Xfixes Xft Xi Xinerama Xpm Xrandr Xrender \
			atk-1.0 expat fontconfig freetype gdk-x11-2.0 \
			gtk-x11-2.0 pango-1.0 pangocairo-1.0 pangoft2-1.0
. elif ${FLAVOR} == "gtk3"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk3
LIB_DEPENDS+=		x11/gtk+3
WANTLIB+=		ICE SM X11 Xft Xpm Xrender atk-1.0 cairo-gobject \
			expat fontconfig freetype gdk-3 gtk-3 pango-1.0 \
			pangocairo-1.0 pangoft2-1.0
. else
ERRORS+=		"Fatal: Conflicting flavor: ${FLAVOR}"
. endif
.endif

post-install:
	chmod -t ${PREFIX}/bin/emacs-${VERSION}
	chmod -s ${PREFIX}/libexec/emacs/${VERSION}/${GCCARCH}/update-game-score
.if ${FLAVOR:Mno_x11}
	rm -Rf ${PREFIX}/share/applications/ ${PREFIX}/share/icons/
.endif

.include <bsd.port.mk>
