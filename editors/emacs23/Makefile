# $OpenBSD: Makefile,v 1.1.1.1 2011/03/28 15:18:54 jasper Exp $

COMMENT-main =		GNU editor: extensible, customizable, self-documenting
COMMENT-el =		elisp sources for those who want to read/modify them

VERSION =		23.3
DISTNAME =		emacs-${VERSION}
PKGNAME-main =		emacs-${VERSION}
FULLPKGNAME-el =	emacs-el-${VERSION}
FULLPKGPATH-el =	editors/emacs,-el

CATEGORIES =		editors

HOMEPAGE =		http://www.gnu.org/software/emacs/

MAINTAINER =		Eric Faurot <eric@openbsd.org>

# GPLv3+
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

MASTER_SITES =		${MASTER_SITE_GNU:=emacs/}

MULTI_PACKAGES =	-main -el

USE_GMAKE =		Yes

FLAVORS =		athena no_x11
FLAVOR ?=

GCCARCH =		${MACHINE_ARCH}-unknown-openbsd${OSREV}

# Should be 2.67
AUTOCONF_VERSION =	2.65
CONFIGURE_STYLE =	autoconf
CONFIGURE_ARGS =	${GCCARCH} --localstatedir=/var

CONFIGURE_ENV =		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

MAKE_ENV =		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS =		GCCARCH VERSION

WANTLIB-main =		c m ncurses ossaudio

.if ${FLAVOR:L:Mno_x11}
.if ${FLAVOR:L:Mathena}
ERRORS =		"Fatal: athena and no_x11 flavors are mutually exclusive"
.endif
CONFIGURE_ARGS +=	--without-x

.elif ${FLAVOR:L:Mathena}
CONFIGURE_ARGS +=	--with-x-toolkit=athena --without-toolkit-scroll-bars
LIB_DEPENDS-main =	graphics/png \
			graphics/tiff \
			graphics/libungif 
WANTLIB-main +=		ICE SM X11 Xaw Xext Xmu Xpm Xt z
WANTLIB-main +=		jpeg png tiff ungif
.else
CONFIGURE_ARGS +=	--with-x-toolkit=gtk
LIB_DEPENDS-main +=	x11/gtk+2 \
			graphics/libungif \
			devel/ORBit2 \
			x11/dbus \
			devel/gconf2 \
			x11/gnome/librsvg
WANTLIB-main +=		GL ICE ORBit-2 SM X11 Xdmcp Xext Xft Xpm Xrender \
			Xau Xcomposite Xcursor Xdamage Xfixes Xi Xinerama \
			Xrandr Xxf86vm \
			atk-1.0 cairo dbus-1 drm expat fontconfig freetype \
			gconf-2 gif gio-2.0 \
			glib-2.0 gmodule-2.0 gobject-2.0 iconv intl \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 pthread \
			rsvg-2 z gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 \
			jpeg png tiff gthread-2.0 pthread-stubs xcb \
			xcb-render xcb-shm
.endif

RUN_DEPENDS-el =	emacs-${VERSION}:${PKGPATH}
PKG_ARCH-el =		*

post-install:
	chmod -t ${PREFIX}/bin/emacs
.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "mips64"
	gzip -f ${PREFIX}/share/emacs/${VERSION}/leim/quail/tsang-b5.el

post-extract:
	touch ${WRKSRC}/leim/quail/tsang-b5.el
.endif

.include <bsd.port.mk>
