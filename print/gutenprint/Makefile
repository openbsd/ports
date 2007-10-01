# $OpenBSD: Makefile,v 1.1.1.1 2007/10/01 10:32:57 ajacoutot Exp $

COMMENT-main=		high quality print drivers
COMMENT-foomatic=	Foomatic data for gutenprint drivers
COMMENT-cups=		gutenprint CUPS driver
COMMENT-gimp=		Gimp print plug-in

V=			5.0.1
DISTNAME=		gutenprint-${V}
PKGNAME-main=		${DISTNAME}
PKGNAME-foomatic=	foomatic-db-${DISTNAME}
PKGNAME-cups=		gutenprint-cups-${V}
PKGNAME-gimp=		gutenprint-gimp-${V}
CATEGORIES=		print

EXTRACT_SUFX=		.tar.bz2
SHARED_LIBS+=		gutenprint	0.0	# .2.0
SHARED_LIBS+=		gutenprintui2	0.0	# .1.0

HOMEPAGE=		http://gimp-print.sourceforge.net/

MAINTAINER=		Jacob Meuser <jakemsr@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gimp-print/}

PSEUDO_FLAVORS=		no_foomatic no_cups no_gimp
FLAVOR?=
MULTI_PACKAGES=		-main

.if !${FLAVOR:L:Mno_foomatic}
MULTI_PACKAGES+=	-foomatic
CONFIGURE_ARGS+=	--with-foomatic3
BUILD_DEPENDS+=		::print/foomatic-db-engine
.else
CONFIGURE_ARGS+=	--without-foomatic
.endif

.if !${FLAVOR:L:Mno_cups}
MULTI_PACKAGES+=	-cups
CONFIGURE_ARGS+=	--with-cups=${LOCALBASE} \
			--enable-cups-ppds \
			--enable-cups-level3-ppds
.else
CONFIGURE_ARGS+=	--with-cups=no
.endif

.if !${FLAVOR:L:Mno_gimp}
MULTI_PACKAGES+=	-gimp
CONFIGURE_ARGS+=	--with-gimp2-as-gutenprint
.else
CONFIGURE_ARGS+=	--without-gimp2
.endif

WANTLIB=		c m z png iconv intl

WANTLIB-main=		${WANTLIB} X11 Xau Xcursor Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender atk-1.0 cairo expat \
			freetype fontconfig glitz pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 ncurses readline
WANTLIB-foomatic=
WANTLIB-cups=		${WANTLIB} crypto jpeg pthread ssl tiff
WANTLIB-gimp=		${WANTLIB} X11 Xau Xcursor Xdmcp Xext Xfixes \
			Xi Xinerama Xrandr Xrender atk-1.0 cairo expat \
			freetype fontconfig glitz pango-1.0 \
			pangocairo-1.0 pangoft2-1.0 gdk-x11-2.0 \
			gdk_pixbuf-2.0 glib-2.0 gmodule-2.0 \
			gobject-2.0 gtk-x11-2.0

LIB_DEPENDS-main=	ijs::print/ijs \
			glib-2.0.>=1000,gmodule-2.0.>=1000,gobject-2.0.>=1000::devel/glib2 \
			gdk-x11-2.0.>=802,gdk_pixbuf-2.0.>=802,gtk-x11-2.0.>=802::x11/gtk+2
LIB_DEPENDS-gimp=	gutenprint,gutenprintui2::${BUILD_PKGPATH} \
			gimp-2.0,gimpbase-2.0,gimpcolor-2.0,gimpmath-2.0,gimpmodule-2.0,gimpui-2.0,gimpwidgets-2.0::graphics/gimp/stable
LIB_DEPENDS-cups=	cups.>=3,cupsimage.>=2::print/cups

RUN_DEPENDS-main=	::print/ghostscript/gnu
RUN_DEPENDS-foomatic=	::${BUILD_PKGPATH}
RUN_DEPENDS-cups=	::${BUILD_PKGPATH}

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-test \
			--enable-testpattern \
			--disable-libgutenprintui \
			--without-gimp \
			--docdir=${PREFIX}/share/doc/gutenprint
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			am_cv_prog_tar_ustar=plaintar

MAKE_ENV=		${CONFIGURE_ENV}
MAKE_FLAGS=		INTLLIBS="\$${LTLIBINTL}"

PKG_ARCH-foomatic=	*

.include <bsd.port.mk>
