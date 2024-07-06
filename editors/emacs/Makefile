COMMENT=		GNU editor: extensible, customizable, self-documenting

# XXX 29.4 was released with a .texi file newer than emacs.info
# Zap post-extract when updating
VERSION=		29.4
DISTNAME=		emacs-${VERSION}
REVISION=		0

CATEGORIES=		editors

HOMEPAGE=		https://www.gnu.org/software/emacs/

MAINTAINER=		Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE=		Yes

WANTLIB += c curses execinfo gmp gnutls jansson m pthread sqlite3
WANTLIB += tree-sitter xml2 z

SITES=			${SITE_GNU:=emacs/}
EXTRACT_SUFX=		.tar.xz

DEBUG_PACKAGES =	${BUILD_PACKAGES}

FLAVORS=		athena gtk2 gtk3 no_x11
FLAVOR?=		gtk3

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd
LOCAL_LISP_PATH=	${SYSCONFDIR}/emacs:${LOCALBASE}/share/emacs/${VERSION:C/[a-z]+$$//}/site-lisp:${LOCALBASE}/share/emacs/site-lisp

CONFIGURE_STYLE=	gnu
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build-aux
CONFIGURE_ARGS=		--build="${GCCARCH}" \
			--enable-locallisppath="${LOCAL_LISP_PATH}" \
			--without-sound

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib ${LDFLAGS}"

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS=		GCCARCH VERSION

USE_GMAKE=		Yes
LIB_DEPENDS=		databases/sqlite3 \
			devel/jansson \
			devel/gmp \
			security/gnutls \
			textproc/libxml \
			textproc/tree-sitter

.if ${FLAVOR} == "no_x11"
CONFIGURE_ARGS+=	--without-x \
			--without-dbus \
			--without-gsettings \
			--without-harfbuzz \
			--without-jpeg \
			--without-lcms2 \
			--without-libotf \
			--without-m17n-flt
.else
LIB_DEPENDS+=		devel/harfbuzz \
			devel/libotf \
			graphics/jpeg \
			graphics/png \
			graphics/tiff \
			graphics/giflib \
			graphics/lcms2 \
			graphics/libwebp \
			misc/m17n/lib \
			x11/dbus \
			x11/gnome/librsvg
RUN_DEPENDS+=		devel/desktop-file-utils \
			devel/xdg-utils \
			x11/gtk+4,-guic
. if ${FLAVOR} == "athena"
CONFIGURE_ARGS+=	--with-x-toolkit=athena
LIB_DEPENDS+=		x11/Xaw3d
WANTLIB += ICE SM X11 X11-xcb Xaw3d Xcomposite Xext Xfixes Xi
WANTLIB += Xinerama Xmu Xpm Xrandr Xrender Xt cairo dbus-1 fontconfig
WANTLIB += freetype gdk_pixbuf-2.0 gif gio-2.0 glib-2.0 gobject-2.0
WANTLIB += harfbuzz intl jpeg lcms2 m17n-core m17n-flt otf png
WANTLIB += rsvg-2 tiff webpdecoder webpdemux xcb xcb-shape xcb-util
. elif ${FLAVOR} == "gtk2"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk2
LIB_DEPENDS+=		x11/gtk+2
WANTLIB += ICE SM X11 X11-xcb Xcomposite Xcursor Xdamage Xext
WANTLIB += Xfixes Xi Xinerama Xpm Xrandr Xrender atk-1.0 cairo
WANTLIB += dbus-1 fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB += gif gio-2.0 glib-2.0 gobject-2.0 gtk-x11-2.0 harfbuzz
WANTLIB += intl jpeg lcms2 m17n-core m17n-flt otf pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 png rsvg-2 tiff webpdecoder webpdemux
WANTLIB += xcb xcb-shape xcb-util
. elif ${FLAVOR} == "gtk3"
CONFIGURE_ARGS+=	--with-x-toolkit=gtk3
LIB_DEPENDS+=		x11/gtk+3
WANTLIB += ICE SM X11 X11-xcb Xcomposite Xext Xfixes Xi Xinerama
WANTLIB += Xpm Xrandr Xrender atk-1.0 cairo cairo-gobject dbus-1
WANTLIB += fontconfig freetype gdk-3 gdk_pixbuf-2.0 gif gio-2.0
WANTLIB += glib-2.0 gobject-2.0 gtk-3 harfbuzz intl jpeg lcms2
WANTLIB += m17n-core m17n-flt otf pango-1.0 pangocairo-1.0 png
WANTLIB += rsvg-2 tiff webpdecoder webpdemux xcb xcb-shape xcb-util
. else
ERRORS+=		"Fatal: Conflicting flavor: ${FLAVOR}"
. endif
.endif

post-extract:
	touch ${WRKSRC}/info/emacs.info

post-install:
	chmod -t ${PREFIX}/bin/emacs-${VERSION}
	mv ${PREFIX}/libexec/emacs/${VERSION}/${GCCARCH}/emacs-*.pdmp \
	    ${PREFIX}/libexec/emacs/${VERSION}/${GCCARCH}/emacs.pdmp
.if ${FLAVOR:Mno_x11}
	rm -Rf ${PREFIX}/share/applications/ ${PREFIX}/share/icons/
.endif

.include <bsd.port.mk>
