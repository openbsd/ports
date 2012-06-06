# $OpenBSD: Makefile,v 1.62 2012/06/06 18:27:34 ajacoutot Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt=	qt interface to PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library
COMMENT-utils=	PDF conversion tools and utilities

V=		0.18.4
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
PKGNAME-utils= poppler-utils-$V
PKGNAME-qt=	poppler-qt-$V
PKGNAME-qt4=	poppler-qt4-$V
OLDSHIT = poppler-0.16.7

REVISION-main=	0
REVISION-qt=	0
REVISION-qt4=	0

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

MULTI_PACKAGES=-main -qt -qt4 -utils

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

MODULES+=	devel/gettext

BUILD_DEPENDS+= devel/gobject-introspection

LIB_DEPENDS-main=${MODGETTEXT_LIB_DEPENDS} \
		devel/glib2 \
		graphics/cairo \
		graphics/lcms \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff

LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} \
		print/poppler

LIB_DEPENDS-qt4=${MODQT4_LIB_DEPENDS} \
		print/poppler

LIB_DEPENDS-utils=${MODGETTEXT_LIB_DEPENDS} \
		print/poppler

WANTLIB-main=	${cWANTLIB} Xext Xfixes ffi \
		glib-2.0 gobject-2.0 gthread-2.0 \
		pixman-1 openjpeg \
		X11 Xau Xdamage Xdmcp Xrender cairo pcre png \
		pthread-stubs xcb xcb-render lcms GL Xxf86vm \
		drm xcb-shm ${MODGETTEXT_WANTLIB}
WANTLIB-qt=	${cWANTLIB} lcms openjpeg poppler png ${MODQT3_WANTLIB}
WANTLIB-qt4=	${cWANTLIB} ${MODQT4_WANTLIB} ICE QtGui QtXml SM X11 Xext Xi \
                Xinerama Xrender lcms openjpeg png poppler QtCore QtGui QtXml
WANTLIB-utils=	GL X11 Xau Xdamage Xdmcp Xext Xfixes Xrender Xxf86vm \
		c cairo drm expat ffi fontconfig freetype glib-2.0 \
		gobject-2.0 gthread-2.0 jpeg lcms m pcre pixman-1 png \
		pthread pthread-stubs stdc++ tiff xcb xcb-render xcb-shm \
		openjpeg poppler z ${cWANTLIB} ${MODGETTEXT_WANTLIB}

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.68
CONFIGURE_ARGS+= --disable-gtk-doc \
		--enable-xpdf-headers \
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
