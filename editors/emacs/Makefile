# $OpenBSD: Makefile,v 1.34 2013/01/02 15:50:28 landry Exp $

COMMENT=		GNU editor: extensible, customizable, self-documenting
BROKEN-hppa =		Invalid function: "DEAD"

VERSION=		24.2
DISTNAME=		emacs-${VERSION}

CATEGORIES=		editors

HOMEPAGE=		http://www.gnu.org/software/emacs/

MAINTAINER=		Jeremie Courreges-Anglas <jca+open@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}

USE_GMAKE=		Yes

FLAVORS=		gtk3 athena no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux
CONFIGURE_ARGS=		--build="${GCCARCH}" \
			--without-compress-info

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng \
				  -DHAVE_SOUND" \
			LDFLAGS="-L${LOCALBASE}/lib -nopie"
CFLAGS+=		-fno-pie

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS=		GCCARCH VERSION

WANTLIB=		c m ncurses ossaudio pthread gnutls xml2
LIB_DEPENDS=		security/gnutls textproc/libxml

.if ${FLAVOR:Mno_x11}
.  if ${FLAVOR:Mathena}
ERRORS=			"Fatal: athena and no_x11 flavors are mutually exclusive"
.  elif ${FLAVOR:Mgtk3}
ERRORS=			"Fatal: gtk3 and no_x11 flavors are mutually exclusive"
.  endif
CONFIGURE_ARGS+=	--without-x \
			--without-dbus \
			--without-gconf \
			--without-gsettings

.elif ${FLAVOR:Mathena}
CONFIGURE_ARGS+=	--with-x-toolkit=athena
LIB_DEPENDS+=		x11/Xaw3d \
			x11/dbus \
			x11/gnome/librsvg \
			devel/gconf2 \
			graphics/png \
			graphics/tiff \
			graphics/libungif \
			graphics/ImageMagick
WANTLIB+=		GL ICE SM X11 Xaw3d Xext Xft Xmu Xpm Xrender Xt expat \
			fontconfig freetype iconv intl pixman-1 pthread-stubs \
			xcb xcb-render xcb-shm z MagickCore MagickWand cairo \
			dbus-1 gconf-2 gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 \
			gobject-2.0 jpeg png rsvg-2 tiff
RUN_DEPENDS=		devel/xdg-utils
.elif ${FLAVOR:Mgtk3}
MODULES+=		devel/gettext
CONFIGURE_ARGS+=	--with-x-toolkit=gtk3
LIB_DEPENDS+=		x11/gtk+3 \
			x11/dbus \
			x11/gnome/librsvg \
			devel/gconf2 \
			graphics/png \
			graphics/tiff \
			graphics/libungif \
			graphics/ImageMagick
WANTLIB+=		GL ICE SM X11 Xft Xpm Xrender expat fontconfig \
			freetype iconv intl pixman-1 pthread-stubs xcb \
			xcb-render xcb-shm z MagickCore MagickWand atk-1.0 \
			cairo cairo-gobject dbus-1 gconf-2 gdk-3 \
			gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gobject-2.0 gtk-3 \
			jpeg pango-1.0 pangocairo-1.0 pangoft2-1.0 png rsvg-2 \
			tiff \
			${MODGETTEXT_WANTLIB}
RUN_DEPENDS=		devel/xdg-utils
.else
MODULES+=		devel/gettext
CONFIGURE_ARGS+=	--with-x-toolkit=gtk
LIB_DEPENDS+=		x11/gtk+2 \
			x11/dbus \
			x11/gnome/librsvg \
			devel/gconf2 \
			graphics/png \
			graphics/tiff \
			graphics/libungif \
			graphics/ImageMagick
WANTLIB+=		GL ICE SM X11 Xcomposite Xcursor Xdamage Xext Xfixes \
			Xft Xi Xinerama Xpm Xrandr Xrender expat fontconfig \
			freetype iconv intl pixman-1 pthread-stubs xcb \
			xcb-render xcb-shm z MagickCore MagickWand atk-1.0 \
			dbus-1 cairo gconf-2 gdk-x11-2.0 gdk_pixbuf-2.0 gif \
			gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 jpeg \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 png rsvg-2 tiff \
			${MODGETTEXT_WANTLIB}
RUN_DEPENDS=		devel/xdg-utils
.endif

post-install:
	chmod -t ${PREFIX}/bin/emacs

.include <bsd.port.mk>
