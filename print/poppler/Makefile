# $OpenBSD: Makefile,v 1.60 2012/02/27 18:53:58 kili Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt=	qt interface to PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library

V=		0.18.2
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
REVISION-main=	0
FULLPKGNAME-qt=	poppler-qt-$V
FULLPKGNAME-qt4=poppler-qt4-$V
OLDSHIT = poppler-0.16.7

SHARED_LIBS +=	poppler              11.0
SHARED_LIBS +=  poppler-cpp          1.0
SHARED_LIBS +=	poppler-glib         9.0
SHARED_LIBS +=	poppler-qt           8.0
SHARED_LIBS +=	poppler-qt4          8.0
DISTFILES = ${DISTNAME}${EXTRACT_SUFX} ${OLDSHIT}${EXTRACT_SUFX}

HOMEPAGE=	http://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt no_qt4
FLAVOR?=

NOT_FOR_ARCHS-qt4 = arm

MULTI_PACKAGES=-main -qt -qt4

.include <bsd.port.arch.mk>


cWANTLIB=	expat freetype fontconfig jpeg m tiff z stdc++

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

# XXX g-ir-scanner failure with gcc3
.if ${COMPILER_VERSION:L:Mgcc4*}
PKG_ARGS+= 	-DGCC4=1
BUILD_DEPENDS+=	devel/gobject-introspection
CONFIGURE_ARGS+=--enable-introspection
.else
PKG_ARGS+=	-DGCC4=0
CONFIGURE_ARGS+=--disable-introspection
.endif

MODULES+=	devel/gettext converters/libiconv

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		devel/glib2 \
		devel/libffi \
		graphics/cairo \
		graphics/lcms \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff

LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} \
		${MODLIBICONV_LIB_DEPENDS} \
		print/poppler \
		graphics/png \
		graphics/tiff

LIB_DEPENDS-qt4=x11/qt4 \
		${MODGETTEXT_LIB_DEPENDS} \
		print/poppler

WANTLIB-main=	${cWANTLIB} Xext Xfixes c ffi \
		glib-2.0 gobject-2.0 gthread-2.0 \
		pixman-1 openjpeg \
		X11 Xau Xdamage Xdmcp Xrender cairo pcre png \
		pthread pthread-stubs xcb xcb-render lcms GL Xxf86vm \
		drm xcb-shm ${MODGETTEXT_WANTLIB}
WANTLIB-qt=	${cWANTLIB} lcms openjpeg poppler png ${MODQT3_WANTLIB} \
		${MODLIBICONV_WANTLIB}
WANTLIB-qt4=	${cWANTLIB} ICE QtCore QtGui QtXml SM X11 Xext Xi \
                Xinerama Xrender lcms \
		openjpeg png poppler \
		QtCore QtGui QtXml

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.68
CONFIGURE_ARGS+= --enable-xpdf-headers \
		--enable-poppler-cpp \
		--enable-utils \
		--enable-zlib \
		--disable-gtk-test

CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include -I${LOCALBASE}/include/libpng" \
		LDFLAGS="-L${LOCALBASE}/lib"

USE_LIBTOOL=	Yes
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
