# $OpenBSD: Makefile,v 1.105 2016/05/01 12:33:24 kili Exp $

COMMENT-main=	PDF rendering library
COMMENT-qt=	qt interface to PDF rendering library
COMMENT-qt4=	qt4 interface to PDF rendering library
COMMENT-qt5=	Qt5 interface to PDF rendering library
COMMENT-utils=	PDF conversion tools and utilities

V=		0.43.0
DISTNAME=	poppler-$V
CATEGORIES=	print
PKGNAME-main=	poppler-$V
PKGNAME-utils=	poppler-utils-$V
PKGNAME-qt=	poppler-qt-$V
PKGNAME-qt4=	poppler-qt4-$V
PKGNAME-qt5=	poppler-qt5-$V
OLDSHIT =	poppler-0.16.7

SHARED_LIBS +=	poppler              36.0     # 60.0
SHARED_LIBS +=	poppler-glib         15.0     # 15.0
SHARED_LIBS +=	poppler-qt           12.0     # 3.0
SHARED_LIBS +=	poppler-qt4          18.0     # 13.0
SHARED_LIBS +=	poppler-qt5          0.0      # 7.0
SHARED_LIBS +=	poppler-cpp          6.1      # 2.1

DISTFILES = ${DISTNAME}.tar.xz ${OLDSHIT}.tar.gz

HOMEPAGE=	http://poppler.freedesktop.org/

MAINTAINER=	Matthias Kilian <kili@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${HOMEPAGE}

PSEUDO_FLAVORS=no_qt no_qt4 no_qt5 bootstrap
# XXX not strictly a bootstrap loop, but on the critical path for libreoffice
FLAVOR?=no_qt no_qt4 no_qt5 bootstrap

NOT_FOR_ARCHS-qt4 = arm
NOT_FOR_ARCHS-qt5 = arm

MULTI_PACKAGES=-main -qt -qt4 -qt5 -utils

.include <bsd.port.arch.mk>

cWANTLIB=	expat freetype fontconfig jpeg m pthread tiff z stdc++ \
		nspr4 nss3 nss3 plc4 plds4 smime3 

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

.if ${BUILD_PACKAGES:M-qt5}
MODULES+=	x11/qt5
.else
CONFIGURE_ARGS+=	--disable-poppler-qt5
.endif

BUILD_DEPENDS+= devel/gobject-introspection

RUN_DEPENDS-main= \
		print/poppler-data>=0.4.7

LIB_DEPENDS-main= \
		converters/libiconv \
		devel/gettext \
		devel/glib2 \
		graphics/cairo \
		graphics/lcms2 \
		graphics/openjpeg \
		graphics/png \
		graphics/tiff \
		security/nss

LIB_DEPENDS-qt=	${MODQT3_LIB_DEPENDS} \
		print/poppler \
		security/nss

LIB_DEPENDS-qt4=${MODQT4_LIB_DEPENDS} \
		print/poppler \
		security/nss

LIB_DEPENDS-qt5=${MODQT5_LIB_DEPENDS} \
		print/poppler \
		security/nss

LIB_DEPENDS-utils= print/poppler \
		security/nss

WANTLIB-main=	${cWANTLIB} Xext ffi gio-2.0 glib-2.0 gmodule-2.0 \
		gobject-2.0 pixman-1 openjpeg X11 Xrender cairo pcre \
		png pthread-stubs xcb xcb-render lcms2 xcb-shm \
		iconv intl nssutil3 plds4 softokn3 sqlite3 ssl3

WANTLIB-qt=	${cWANTLIB} lcms2 openjpeg poppler png pthread-stubs \
		softokn3 ssl3 ${MODQT3_WANTLIB}

WANTLIB-qt4=    ${cWANTLIB} ${MODQT4_WANTLIB} ICE QtCore QtGui QtXml \
		SM X11 Xext Xi Xinerama Xrender ffi glib-2.0 \
		gobject-2.0 gthread-2.0 iconv intl lcms2 openjpeg \
		png poppler pcre pthread-stubs xcb softokn3 ssl3

WANTLIB-qt5=	${cWANTLIB} ${MODQT5_WANTLIB} ${MODGCC4_CPPWANTLIB} \
		GL Qt5Core Qt5Gui Qt5Widgets Qt5Xml X11 X11-xcb \
		Xdamage Xext Xfixes Xxf86vm drm execinfo ffi glapi \
		glib-2.0 gobject-2.0 graphite2 gthread-2.0 harfbuzz \
		iconv icudata icui18n icuuc intl lcms2 openjpeg pcre \
		pcre16 png poppler pthread-stubs xcb xcb-dri2 xcb-glx \
		softokn3 ssl3
		
WANTLIB-utils=	X11 Xext Xrender c cairo fontconfig lcms2 m pixman-1 \
		png pthread-stubs xcb xcb-render xcb-shm openjpeg \
		poppler z ${cWANTLIB} softokn3 ssl3

CONFIGURE_STYLE=autoconf
AUTOCONF_VERSION=2.69
CONFIGURE_ARGS+=--enable-xpdf-headers \
		--enable-poppler-cpp \
		--enable-utils \
		--enable-zlib \
		--disable-gtk-test

CONFIGURE_ENV+= CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib" \
		LIBJPEG_CFLAGS="-I${LOCALBASE}/include" \
		ac_cv_prog_MOCQT4=${MODQT4_MOC} \
		ac_cv_prog_MOCQT5=${MODQT5_MOC}

USE_GMAKE=	Yes

MAIN_CC=	/usr/bin/cc
MAIN_CXX=	/usr/bin/c++
.if "${USE_CCACHE:L}" == "yes"
MAIN_CC:=	ccache ${MAIN_CC}
MAIN_CXX:=	ccache ${MAIN_CXX}
.endif

post-extract:
	cd ${WRKDIST} && \
	    for i in poppler-qt-uninstalled.pc.in poppler-qt.pc.cmake \
		poppler-qt.pc.in; do  \
			ln -sf ../${OLDSHIT}/$$i $$i; \
	    done; \
	    ln -sf ../../${OLDSHIT}/m4/qt.m4 m4/qt.m4
	cd ${WRKDIST} && cp -R ../${OLDSHIT}/qt qt

post-configure:
	find ${WRKBUILD} -name Makefile \! -path '*/qt5/*' -print0 | xargs -0 \
		perl -pi -e     's,^CC = \S+,CC = ${MAIN_CC},;' \
		         -e    's,^CPP = \S+,CPP = ${MAIN_CC},;' \
		         -e    's,^CXX = \S+,CXX = ${MAIN_CXX},;' \
		         -e 's,^CXXCPP = \S+,CXXCPP = ${MAIN_CXX},;'

.include <bsd.port.mk>
