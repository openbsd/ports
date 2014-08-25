# $OpenBSD: Makefile,v 1.85 2014/08/25 19:19:42 ajacoutot Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt=	qt interface to PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library
COMMENT-utils=	PDF conversion tools and utilities

V=		0.26.4
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
PKGNAME-utils=	poppler-utils-$V
PKGNAME-qt=	poppler-qt-$V
PKGNAME-qt4=	poppler-qt4-$V
OLDSHIT =	poppler-0.16.7

SHARED_LIBS +=  poppler              22.0     # 46.0
SHARED_LIBS +=  poppler-glib         13.1     # 14.0
SHARED_LIBS +=  poppler-qt           12.0     # 3.0
SHARED_LIBS +=  poppler-qt4          13.1     # 8.0
SHARED_LIBS +=  poppler-cpp          6.0      # 2.0

DISTFILES = ${DISTNAME}.tar.xz ${OLDSHIT}.tar.gz

HOMEPAGE=	http://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt no_qt4 bootstrap
# XXX not strictly a bootstrap loop, but on the critical path for libreoffice
FLAVOR?=no_qt no_qt4 bootstrap

NOT_FOR_ARCHS-qt4 = arm

MULTI_PACKAGES=-main -qt -qt4 -utils

.include <bsd.port.arch.mk>

cWANTLIB=	expat freetype fontconfig jpeg m pthread tiff z stdc++

.if ${BUILD_PACKAGES:M-qt}
MODULES+=	x11/qt3
.else
CONFIGURE_ARGS+=	--disable-poppler-qt
.endif

.if ${BUILD_PACKAGES:M-qt4}
MODULES+=	x11/qt4
.else
CONFIGURE_ARGS+=	--disable-poppler-qt4
.endif

MODULES+=	devel/gettext

BUILD_DEPENDS+= devel/gobject-introspection

RUN_DEPENDS-main=${MODGETTEXT_RUN_DEPENDS} \
		print/poppler-data>=0.4.7

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		devel/glib2 \
		graphics/cairo \
		graphics/lcms2 \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff

LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} \
		print/poppler

LIB_DEPENDS-qt4=${MODQT4_LIB_DEPENDS} \
		print/poppler

LIB_DEPENDS-utils= print/poppler

WANTLIB-main=	${cWANTLIB} Xext ffi gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 pixman-1 openjpeg X11 Xrender cairo pcre \
		png pthread-stubs xcb xcb-render lcms2 xcb-shm \
		${MODGETTEXT_WANTLIB}
WANTLIB-qt=	${cWANTLIB} lcms2 openjpeg poppler png pthread-stubs \
		${MODQT3_WANTLIB}
WANTLIB-qt4=    ${cWANTLIB} ${MODQT4_WANTLIB} ICE QtCore QtGui QtXml \
		SM X11 Xext Xi Xinerama Xrender ffi glib-2.0 \
		gobject-2.0 gthread-2.0 iconv intl lcms2 openjpeg \
		png poppler pcre pthread-stubs xcb
WANTLIB-utils=	X11 Xext Xrender c cairo fontconfig lcms2 m pixman-1 \
		png pthread-stubs xcb xcb-render xcb-shm openjpeg \
		poppler z ${cWANTLIB}

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
CONFIGURE_ARGS+= --disable-gtk-doc \
		--enable-xpdf-headers \
		--enable-poppler-cpp \
		--enable-utils \
		--enable-zlib \
		--disable-gtk-test

CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBJPEG_CFLAGS="-I${LOCALBASE}/include"

# If one of these tools is found at configure stage, it might be used,
# no matter whether we use --disable-gtk-doc or not.
CONFIGURE_ENV +=ac_cv_path_GTKDOC_CHECK="" \
		ac_cv_path_GTKDOC_REBASE="" \
		ac_cv_path_GTKDOC_MKPDF=""

USE_GMAKE=	Yes

post-extract:
	cd ${WRKDIST} && \
	    for i in poppler-qt-uninstalled.pc.in poppler-qt.pc.cmake \
		poppler-qt.pc.in; do  \
			ln -sf ../${OLDSHIT}/$$i $$i; \
	    done; \
	    ln -sf ../../${OLDSHIT}/m4/qt.m4 m4/qt.m4
	cd ${WRKDIST} && cp -R ../${OLDSHIT}/qt qt

.include <bsd.port.mk>
