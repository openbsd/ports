# $OpenBSD: Makefile,v 1.77 2018/06/29 22:16:11 espie Exp $

COMMENT=		GNU editor: extensible, customizable, self-documenting

VERSION=		26.1
DISTNAME=		emacs-${VERSION}
REVISION=		1

CATEGORIES=		editors

HOMEPAGE=		https://www.gnu.org/software/emacs/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m curses pthread gnutls xml2 z

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
			--without-gsettings \
			--without-jpeg \
			--without-lcms2
.else
LIB_DEPENDS+=		x11/dbus \
			x11/gnome/librsvg \
			graphics/jpeg \
			graphics/png \
			graphics/tiff \
			graphics/giflib \
			graphics/ImageMagick \
			graphics/lcms2
RUN_DEPENDS+=		devel/desktop-file-utils \
			devel/xdg-utils \
			x11/gtk+3,-guic
. if ${FLAVOR} == "athena"
CONFIGURE_ARGS+=	--with-x-toolkit=athena
LIB_DEPENDS+=		x11/Xaw3d
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 X11-xcb
WANTLIB += Xaw3d Xext Xfixes Xft Xinerama Xmu Xpm Xrandr Xrender
WANTLIB += Xt cairo dbus-1 fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gif gio-2.0 glib-2.0 gobject-2.0 intl jpeg lcms2 png
WANTLIB += rsvg-2 tiff xcb
. elif ${FLAVOR} == "gtk2"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk2
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender atk-1.0 cairo dbus-1 fontconfig
WANTLIB += freetype fribidi gdk-x11-2.0 gdk_pixbuf-2.0 gif gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-x11-2.0 intl jpeg lcms2 pango-1.0
WANTLIB += pangocairo-1.0 pangoft2-1.0 png rsvg-2 tiff xcb
. elif ${FLAVOR} == "gtk3"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk3
LIB_DEPENDS+=		x11/gtk+3
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 X11-xcb
WANTLIB += Xext Xfixes Xft Xinerama Xpm Xrandr Xrender atk-1.0
WANTLIB += cairo cairo-gobject dbus-1 fontconfig freetype fribidi
WANTLIB += gdk-3 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gtk-3 intl jpeg lcms2 pango-1.0 pangocairo-1.0 png
WANTLIB += rsvg-2 tiff xcb
. else
ERRORS+=		"Fatal: Conflicting flavor: ${FLAVOR}"
. endif
.endif

post-install:
	chmod -t ${PREFIX}/bin/emacs-${VERSION}
.if ${FLAVOR:Mno_x11}
	rm -Rf ${PREFIX}/share/applications/ ${PREFIX}/share/icons/
.endif

.include <bsd.port.mk>
