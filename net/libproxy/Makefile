# $OpenBSD: Makefile,v 1.10 2011/03/24 06:50:09 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		library handling all the details of proxy configuration
COMMENT-gnome=		plugin for GNOME
COMMENT-mozilla=	plugin for mozilla-based (gecko) browsers
COMMENT-webkit=		plugin for webkit-based browsers

VERSION=		0.4.6
DISTNAME=		libproxy-${VERSION}

PKGNAME-main=		libproxy-${VERSION}
PKGNAME-gnome=		libproxy-gnome-${VERSION}
PKGNAME-mozilla=	libproxy-mozilla-${VERSION}
PKGNAME-webkit=		libproxy-webkit-${VERSION}

CATEGORIES=		net

SHARED_LIBS +=  modman         0.0 # 1.0
SHARED_LIBS +=  proxy          1.0 # 0.0

HOMEPAGE=		http://libproxy.googlecode.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

# order matters: cmake must come before python
MODULES=		devel/cmake \
			lang/python

# do not enable webkit support by default because of cyclic dependency:
# libproxy,-webkit -> webkit -> libsoup -> libproxy
PSEUDO_FLAVORS=		webkit
FLAVOR?=

MULTI_PACKAGES=		-main -gnome -mozilla

BUILD_DEPENDS=		devel/xulrunner/1.9,-devel>=1.9.1 \
			lang/vala

RUN_DEPENDS-main=	${MODPY_RUN_DEPENDS}

RUN_DEPENDS-gnome=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-gnome=	${BUILD_PKGPATH}>=${VERSION} \
			devel/gconf2

RUN_DEPENDS-mozilla=	# empty
LIB_DEPENDS-mozilla=	${BUILD_PKGPATH}>=${VERSION} \
		 	devel/xulrunner/1.9 \
			devel/nspr

RUN_DEPENDS-webkit=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-webkit=	STEM->=${VERSION}:${BUILD_PKGPATH}, \
			www/webkit

cWANTLIB += m pthread stdc++

WANTLIB-main += ${cWANTLIB} c perl

WANTLIB-gnome += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-gnome += ORBit-2 c gconf-2 gio-2.0 glib-2.0 gmodule-2.0
WANTLIB-gnome += gobject-2.0 gthread-2.0 modman proxy

WANTLIB-mozilla += ${cWANTLIB} c modman nspr4 plc4 plds4 proxy

WANTLIB-webkit += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-webkit += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-webkit += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB-webkit += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-webkit += gio-2.0 glib-2.0 gmodule-2.0 gnutls gobject-2.0 gthread-2.0
WANTLIB-webkit += gtk-x11-2.0 modman pango-1.0 pangocairo-1.0
WANTLIB-webkit += pangoft2-1.0 pixman-1 png proxy pthread-stubs soup-2.4
WANTLIB-webkit += tasn1 webkit-1.0 xcb xcb-render xcb-shm xml2 z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="${CFLAGS} -pthread" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread" \
			-DWITH_PYTHON:BOOL=ON \
			-DWITH_PERL:BOOL=ON \
			-DWITH_GNOME:BOOL=ON \
			-DWITH_MOZJS:BOOL=ON \
			-DWITH_VALA:BOOL=ON \
			-DWITH_KDE4:BOOL=OFF \
			-DWITH_DOTNET:BOOL=OFF \
			-DWITH_NM:BOOL=OFF

.if ${FLAVOR:L:Mwebkit}
MULTI_PACKAGES +=	-webkit
CONFIGURE_ARGS +=	-DWITH_WEBKIT:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_WEBKIT:BOOL=OFF
.endif

pre-configure:
	${SUBST_CMD} ${WRKSRC}/libproxy/cmake/libproxy.cmk  \
		${WRKSRC}/libmodman/CMakeLists.txt

.include <bsd.port.mk>
