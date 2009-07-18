# $OpenBSD: Makefile,v 1.7 2009/07/18 15:50:40 naddy Exp $

COMMENT-main=		GNU editor: extensible, customizable, self-documenting
COMMENT-el=		elisp sources for those who want to read/modify them

VERSION=		22.3
DISTNAME=		emacs-${VERSION}
PKGNAME-main=		emacs-${VERSION}p0
FULLPKGNAME-el=		emacs-el-${VERSION}p0
FULLPKGPATH-el=		editors/emacs22,-el

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

FLAVORS=		gtk no_x11
FLAVOR?=

GCCARCH=		${MACHINE_ARCH}-unknown-openbsd${OPSYS_VER}

AUTOCONF_VERSION=	2.61
CONFIGURE_STYLE=	autoconf
CONFIGURE_ARGS=		${GCCARCH} --with-pop --localstatedir=/var

CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include \
				  -I${LOCALBASE}/include/libpng" \
			LDFLAGS="-L${LOCALBASE}/lib"

# Disable propolice on powerpc due to gcc3+propolice bug.
.if ${MACHINE_ARCH} == "powerpc"
CONFIGURE_ENV+=		CFLAGS="${CFLAGS} -fno-stack-protector"
.endif

MAKE_ENV=		INSTALL_EMACS="${INSTALL_SCRIPT}" \
			LOGNAME="${SHAREOWN}"

SUBST_VARS=		GCCARCH VERSION

WANTLIB-main=		c m ncurses ossaudio

.if ${FLAVOR:L:Mno_x11}
.if ${FLAVOR:L:Mgtk}
ERRORS=			"Fatal: gtk and no_x11 flavors are mutually exclusive"
.endif
CONFIGURE_ARGS+=	--without-x

.elif ${FLAVOR:L:Mgtk}
CONFIGURE_ARGS+=	--with-gtk
USE_X11=		Yes
LIB_DEPENDS-main+=	gtk-x11-2.0,gdk-x11-2.0,gdk_pixbuf-2.0::x11/gtk+2 \
			jpeg::graphics/jpeg \
			png::graphics/png \
			tiff::graphics/tiff \
			ungif::graphics/libungif
WANTLIB-main+=		ICE SM X11 Xdmcp Xext Xft Xpm Xrender Xau Xcomposite \
			Xcursor Xdamage Xfixes Xi Xinerama Xrandr \
			atk-1.0 cairo expat fontconfig freetype gio-2.0 \
			glib-2.0 glitz gmodule-2.0 gobject-2.0 iconv intl \
			pango-1.0 pangocairo-1.0 pangoft2-1.0 pixman-1 pthread z
.else
CONFIGURE_ARGS+=	--with-x-toolkit=athena --without-toolkit-scroll-bars
USE_X11=		Yes
LIB_DEPENDS-main=	jpeg::graphics/jpeg \
			png::graphics/png \
			tiff::graphics/tiff \
			ungif::graphics/libungif 
WANTLIB-main+=		ICE SM X11 Xaw Xext Xmu Xpm Xt z
.endif

RUN_DEPENDS-el=		:emacs-${VERSION}:${PKGPATH}
PKG_ARCH-el=		*

.if ${MACHINE_ARCH} == "amd64"
post-extract:
	touch ${WRKSRC}/leim/quail/tsang-b5.el

post-install:
	gzip -f ${PREFIX}/share/emacs/${VERSION}/leim/quail/tsang-b5.el
.endif

.include <bsd.port.mk>
