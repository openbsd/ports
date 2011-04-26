# $OpenBSD: Makefile,v 1.52 2011/04/26 18:50:46 shadchin Exp $

COMMENT-main=	multiple virtual desktop window manager, with icons
COMMENT-fvicons=multiple virtual desktop window manager icons
COMMENT-fvwm2=	multiple virtual desktop window manager, without icons

VERSION=	2.6.1
DISTNAME=	fvwm-${VERSION}
PKGNAME-main=	fvwm2+fvicons-${VERSION}
FULLPKGNAME-fvicons=fvicons-${VERSION}
PKGNAME-fvwm2=	fvwm2-${VERSION}

CATEGORIES=     x11

DISTFILES=	${DISTNAME}${EXTRACT_SUFX} fvwm_icons-20070101.tar.gz

HOMEPAGE=	http://www.fvwm.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

# GPL/BSD-like (badly worded)
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += GL ICE SM X11 Xau Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xft Xinerama Xpm Xrender Xxf86vm c cairo drm expat
WANTLIB += fontconfig freetype gdk_pixbuf-2.0 gio-2.0 glib-2.0
WANTLIB += gmodule-2.0 gobject-2.0 gthread-2.0 m pixman-1 png
WANTLIB += pthread pthread-stubs readline rsvg-2 termcap xcb xcb-render
WANTLIB += xcb-shm z

MODULES=	devel/gettext

MASTER_SITES=	ftp://ftp.fvwm.org/pub/fvwm/version-2/

LIB_DEPENDS+=	graphics/png \
		x11/gnome/librsvg

MULTI_PACKAGES=	-main -fvwm2 -fvicons

FLAVORS=	rplay debug
FLAVOR?=

.if ${FLAVOR:L:Mrplay}
LIB_DEPENDS+=	audio/rplay
CONFIGURE_ARGS+= --with-rplay-includes="${LOCALBASE}/include" \
		 --with-rplay-library="${LOCALBASE}/lib"
WANTLIB += rplay
.else
CONFIGURE_ARGS+= --without-rplay-library
.endif

.if ${FLAVOR:L:Mdebug}
CONFIGURE_ARGS+= --enable-debug-msgs
.endif

PKG_ARCH-fvicons=	*
LIB_DEPENDS-fvicons=
WANTLIB-fvicons=
FULLPKGPATH-fvicons=	${PKGPATH},-fvicons

SUBST_VARS=	VERSION

USE_GROFF =	Yes

SEPARATE_BUILD= concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS +=	--disable-bidi \
			--disable-gtk \
			--without-gnome \
			--without-stroke-library \
			--with-png-includes="${LOCALBASE}/include/libpng"
CONFIGURE_ENV +=	CFLAGS="${CFLAGS} -I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="${LDFLAGS} -L${LOCALBASE}/lib -L${X11BASE}/lib"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/pixmaps/fvwm
	${INSTALL_DATA} ${WRKDIR}/fvwm_icons-20070101/*.xpm ${PREFIX}/share/pixmaps/fvwm/
	${INSTALL_DATA} ${WRKSRC}/sample.fvwmrc/system.fvwm2rc ${PREFIX}/share/fvwm

.include <bsd.port.mk>
