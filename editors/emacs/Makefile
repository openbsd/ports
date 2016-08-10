# $OpenBSD: Makefile,v 1.62 2016/08/10 19:21:37 jca Exp $

COMMENT=		GNU editor: extensible, customizable, self-documenting

VERSION=		24.5
REVISION=		6
DISTNAME=		emacs-${VERSION}

CATEGORIES=		editors

HOMEPAGE=		https://www.gnu.org/software/emacs/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m ncurses pthread gnutls xml2 z

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}

USE_GMAKE=		Yes

FLAVORS=		athena gtk2 gtk3 no_x11
FLAVOR?=		gtk3

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux
CONFIGURE_ARGS=		--build="${GCCARCH}" \
			--without-sound

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -nopie" \
			ac_cv_header_execinfo_h=no
CFLAGS+=		-fno-pie

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS=		GCCARCH VERSION

LIB_DEPENDS=		security/gnutls \
			textproc/libxml

.if ${FLAVOR} == "no_x11"
CONFIGURE_ARGS+=	--without-x \
			--without-dbus \
			--without-gconf \
			--without-gsettings \
			--without-file-notification
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
			x11/gtk+3,-guic
. if ${FLAVOR} == "athena"
CONFIGURE_ARGS+=	--with-x-toolkit=athena
LIB_DEPENDS+=		x11/Xaw3d
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xaw3d
WANTLIB += Xext Xft Xinerama Xmu Xpm Xrandr Xrender Xt cairo dbus-1
WANTLIB += fontconfig freetype gconf-2 gdk_pixbuf-2.0 gif gio-2.0
WANTLIB += glib-2.0 gobject-2.0 intl jpeg png rsvg-2 tiff
. elif ${FLAVOR} == "gtk2"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk2
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xcomposite
WANTLIB += Xcursor Xdamage Xext Xfixes Xft Xi Xinerama Xpm Xrandr
WANTLIB += Xrender atk-1.0 cairo dbus-1 fontconfig freetype gconf-2
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-x11-2.0 intl jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += png rsvg-2 tiff
. elif ${FLAVOR} == "gtk3"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk3
LIB_DEPENDS+=		x11/gtk+3
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 Xft Xinerama
WANTLIB += Xpm Xrandr Xrender atk-1.0 cairo cairo-gobject dbus-1
WANTLIB += fontconfig freetype gconf-2 gdk-3 gdk_pixbuf-2.0 gif
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl jpeg pango-1.0
WANTLIB += pangocairo-1.0 png rsvg-2 tiff
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
