# $OpenBSD: Makefile,v 1.31 2013/01/02 15:50:28 landry Exp $

COMMENT-main=		GNU editor: extensible, customizable, self-documenting
COMMENT-el=		elisp sources for those who want to read/modify them
BROKEN-hppa =	Illegal operands in asm on callproc.c

VERSION=		22.3
DISTNAME=		emacs-${VERSION}
PKGNAME-main=		emacs-${VERSION}
FULLPKGNAME-el=		emacs-el-${VERSION}
FULLPKGPATH-el=		editors/emacs22,-el
REVISION-main=		15
REVISION-el=		4

CATEGORIES=		editors

HOMEPAGE=		http://www.gnu.org/software/emacs/

MAINTAINER=		Eric Faurot <eric@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNU:=emacs/}

MULTI_PACKAGES=		-main -el

USE_GMAKE=		Yes
USE_GROFF =		Yes

FLAVORS=		gtk no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd${OSREV}

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${GCCARCH} --with-pop --with-system-malloc

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib -nopie"
CFLAGS +=		-fno-pie

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS=		GCCARCH VERSION

WANTLIB-main=		c m ncurses ossaudio
WANTLIB-el=
LIB_DEPENDS-el=

.if ${FLAVOR:Mno_x11}
.  if ${FLAVOR:Mgtk}
ERRORS=			"Fatal: gtk and no_x11 flavors are mutually exclusive"
.  endif
CONFIGURE_ARGS+=	--without-x

.elif ${FLAVOR:Mgtk}
MODULES +=		devel/gettext
CONFIGURE_ARGS+=	--with-gtk
LIB_DEPENDS-main+=	x11/gtk+2 \
			graphics/libungif
WANTLIB-main+=		GL ICE SM X11 Xext Xft Xpm Xrender Xcomposite \
			Xcursor Xdamage Xfixes Xi Xinerama Xrandr \
			atk-1.0 cairo expat fontconfig freetype gio-2.0 \
			glib-2.0 gobject-2.0 \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 pthread \
			z gtk-x11-2.0 gdk-x11-2.0 gdk_pixbuf-2.0 \
			jpeg png ungif tiff pthread-stubs xcb \
			xcb-render xcb-shm ${MODGETTEXT_WANTLIB}
.else
CONFIGURE_ARGS+=	--with-x-toolkit=athena --without-toolkit-scroll-bars
LIB_DEPENDS-main+=	graphics/png \
			graphics/tiff \
			graphics/libungif 
WANTLIB-main+=		ICE SM X11 Xaw Xext Xmu Xpm Xt z
WANTLIB-main+=		jpeg png tiff ungif
.endif

RUN_DEPENDS-el=		emacs-${VERSION}:${PKGPATH}
PKG_ARCH-el=		*

NO_REGRESS=		Yes

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "mips64"
post-extract:
	touch ${WRKSRC}/leim/quail/tsang-b5.el

post-install:
	gzip -f ${PREFIX}/share/emacs/${VERSION}/leim/quail/tsang-b5.el
.endif

.include <bsd.port.mk>
