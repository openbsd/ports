# $OpenBSD: Makefile,v 1.95 2020/07/03 17:05:14 jca Exp $

COMMENT=		GNU editor: extensible, customizable, self-documenting

VERSION=		26.3
REVISION=		2
DISTNAME=		emacs-${VERSION}

CATEGORIES=		editors

HOMEPAGE=		https://www.gnu.org/software/emacs/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE=	Yes

WANTLIB=		c m curses pthread gnutls xml2 z

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}
EXTRACT_SUFX=		.tar.xz

DEBUG_PACKAGES =	${BUILD_PACKAGES}

FLAVORS=		athena gtk2 gtk3 no_x11
FLAVOR?=		gtk3

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux
CONFIGURE_ARGS=		--build="${GCCARCH}" \
			--without-sound

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -nopie ${LDFLAGS}" \
			ac_cv_header_execinfo_h=no
CFLAGS+=		-fno-pie

.include <bsd.port.arch.mk>
.if ${PROPERTIES:Mlld}
# ld -Z not supported
.elif ${MACHINE_ARCH} == "sparc64"
# No need for ld -Z
.else
CONFIGURE_ENV+=		EMACS_LD_SWITCH_SYSTEM="-Z"
.endif

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS=		GCCARCH VERSION

USE_GMAKE=		Yes
LIB_DEPENDS=		security/gnutls \
			textproc/libxml

.if ${FLAVOR} == "no_x11"
CONFIGURE_ARGS+=	--without-x \
			--without-dbus \
			--without-gsettings \
			--without-jpeg \
			--without-lcms2 \
			--without-libotf \
			--without-m17n-flt
.else
LIB_DEPENDS+=		devel/libotf \
			graphics/jpeg \
			graphics/png \
			graphics/tiff \
			graphics/giflib \
			graphics/ImageMagick \
			graphics/lcms2 \
			misc/m17n/lib \
			x11/dbus \
			x11/gnome/librsvg
RUN_DEPENDS+=		devel/desktop-file-utils \
			devel/xdg-utils \
			x11/gtk+3,-guic
. if ${FLAVOR} == "athena"
CONFIGURE_ARGS+=	--with-x-toolkit=athena
LIB_DEPENDS+=		x11/Xaw3d
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 X11-xcb
WANTLIB += Xaw3d Xext Xfixes Xft Xinerama Xmu Xpm Xrandr Xrender
WANTLIB += Xt cairo dbus-1 fontconfig freetype gdk_pixbuf-2.0
WANTLIB += gif gio-2.0 glib-2.0 gobject-2.0 intl jpeg lcms2 m17n-core
WANTLIB += m17n-flt otf png rsvg-2 tiff xcb
. elif ${FLAVOR} == "gtk2"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk2
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 X11-xcb
WANTLIB += Xcomposite Xcursor Xdamage Xext Xfixes Xft Xi Xinerama
WANTLIB += Xpm Xrandr Xrender atk-1.0 cairo dbus-1 fontconfig
WANTLIB += freetype gdk-x11-2.0 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0
WANTLIB += gobject-2.0 gtk-x11-2.0 intl jpeg lcms2 m17n-core m17n-flt
WANTLIB += otf pango-1.0 pangocairo-1.0 pangoft2-1.0 png rsvg-2
WANTLIB += tiff xcb
. elif ${FLAVOR} == "gtk3"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk3
LIB_DEPENDS+=		x11/gtk+3
WANTLIB += ICE MagickCore-6.Q16 MagickWand-6.Q16 SM X11 X11-xcb
WANTLIB += Xext Xfixes Xft Xinerama Xpm Xrandr Xrender atk-1.0
WANTLIB += cairo cairo-gobject dbus-1 fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB += intl jpeg lcms2 m17n-core m17n-flt otf pango-1.0 pangocairo-1.0
WANTLIB += png rsvg-2 tiff xcb
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
