# $OpenBSD: Makefile,v 1.13 2009/08/10 06:34:08 kili Exp $

COMMENT-main=		high quality print drivers
COMMENT-foomatic=	Foomatic data for gutenprint drivers
COMMENT-gimp=		Gimp print plug-in

V=			5.2.3
DISTNAME=		gutenprint-${V}
PKGNAME-main=		${DISTNAME}p1
PKGNAME-foomatic=	foomatic-db-${DISTNAME}p0
PKGNAME-gimp=		gutenprint-gimp-${V}p1

MAJOR_V=		${V:C/^([0-9]+\.[0-9]+).*/\1/}
SUBST_VARS=		MAJOR_V

CATEGORIES=		print

EXTRACT_SUFX=		.tar.bz2

SHARED_LIBS+=		gutenprint	1.0	# .2.3
SHARED_LIBS+=		gutenprintui2	1.0	# .1.0

HOMEPAGE=		http://gimp-print.sourceforge.net/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gimp-print/}

PSEUDO_FLAVORS=		no_foomatic no_gimp
FLAVOR?=
MULTI_PACKAGES=		-main

.if !${FLAVOR:L:Mno_foomatic}
MULTI_PACKAGES+=	-foomatic
CONFIGURE_ARGS+=	--with-foomatic3
BUILD_DEPENDS+=		::print/foomatic-db-engine
.else
CONFIGURE_ARGS+=	--without-foomatic
.endif

.if !${FLAVOR:L:Mno_gimp}
MULTI_PACKAGES+=	-gimp
CONFIGURE_ARGS+=	--with-gimp2-as-gutenprint \
			--with-gimp2
.else
CONFIGURE_ARGS+=	--without-gimp2
.endif

WANTLIB += X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB += Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig
WANTLIB += freetype gio-2.0 glib-2.0 glitz gmodule-2.0 gobject-2.0
WANTLIB += iconv intl m pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB += pcre pixman-1 png pthread-stubs xcb z

WANTLIB-main=	${WANTLIB} ncurses readline
WANTLIB-foomatic=
WANTLIB-gimp=	${WANTLIB} gdk-x11-2.0 gdk_pixbuf-2.0 gthread-2.0 \
		gtk-x11-2.0 pthread

LIB_DEPENDS-main=	ijs::print/ijs \
			gdk-x11-2.0.>=802,gdk_pixbuf-2.0.>=802,gtk-x11-2.0.>=802::x11/gtk+2
LIB_DEPENDS-gimp=	gutenprint,gutenprintui2::${BUILD_PKGPATH} \
			gimp-2.0,gimpbase-2.0,gimpcolor-2.0,gimpconfig-2.0,gimpmath-2.0,gimpmodule-2.0,gimpui-2.0,gimpwidgets-2.0::graphics/gimp/stable
RUN_DEPENDS-main=	::print/ghostscript/gnu
RUN_DEPENDS-foomatic=	::${BUILD_PKGPATH}

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED} \
			--enable-static \
			--enable-test \
			--enable-testpattern \
			--enable-libgutenprintui2 \
			--enable-escputil \
			--with-foomatic \
			--with-foomatic3 \
			--with-ghostscript \
			--with-cups=no
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib" \
			am_cv_prog_tar_ustar=plaintar

.for i in DVIPS DB2PDF DVIPDF DB2PS DB2HTML DOXYGEN TEXI2HTML CONVERT
CONFIGURE_ENV+=		ac_cv_path_$i=""
.endfor

PKG_ARCH-foomatic=	*

FAKE_FLAGS=		docdir=${PREFIX}/share/doc/gutenprint

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gutenprintui2/plist.c

.include <bsd.port.mk>
