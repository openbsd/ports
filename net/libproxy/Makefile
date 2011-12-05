# $OpenBSD: Makefile,v 1.23 2011/12/05 10:38:42 sthen Exp $

SHARED_ONLY=		Yes

COMMENT-main=		library handling all the details of proxy configuration
COMMENT-mozilla=	pacrunner libproxy plugin for mozilla-based (gecko) browsers
COMMENT-webkit=		pacrunner libproxy plugin for webkit-based browsers

VERSION=		0.4.6
DISTNAME=		libproxy-${VERSION}

PKGNAME-main=		libproxy-${VERSION}
PKGNAME-mozilla=	libproxy-mozilla-${VERSION}
PKGNAME-webkit=		libproxy-webkit-${VERSION}

REVISION-main=		7
REVISION-mozilla=	4
REVISION-webkit=	6

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
			lang/python \
			devel/gettext

# do not enable webkit support by default because of cyclic dependency:
#     libproxy,-webkit -> webkit -> libsoup -> libproxy
# do not enable mozilla support by default, xulrunner doesn't build on all arches
PSEUDO_FLAVORS=		mozilla webkit
FLAVOR?=

MULTI_PACKAGES=		-main

BUILD_DEPENDS=		lang/vala

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/gconf2

RUN_DEPENDS-mozilla=	# empty
LIB_DEPENDS-mozilla=	${BUILD_PKGPATH}>=${VERSION} \
		 	devel/xulrunner/1.9 \
			devel/nspr

RUN_DEPENDS-webkit=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-webkit=	STEM->=${VERSION}:${BUILD_PKGPATH}, \
			www/webkit>=1.4.0v0

cWANTLIB += m stdc++

WANTLIB-main += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-main += c gconf-2 glib-2.0 gobject-2.0 gthread-2.0 perl pthread

WANTLIB-mozilla += ${cWANTLIB} c modman nspr4 plc4 plds4 proxy
WANTLIB-mozilla += xulrunner1.9/mozjs

WANTLIB-webkit += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-webkit += GL X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes
WANTLIB-webkit += Xi Xinerama Xrandr Xrender Xxf86vm atk-1.0 cairo drm
WANTLIB-webkit += expat fontconfig freetype gdk-x11-2.0 gdk_pixbuf-2.0
WANTLIB-webkit += gio-2.0 glib-2.0 gmodule-2.0 gobject-2.0 gthread-2.0
WANTLIB-webkit += gtk-x11-2.0 modman pango-1.0 pangocairo-1.0
WANTLIB-webkit += pangoft2-1.0 pixman-1 png proxy pthread-stubs soup-2.4
WANTLIB-webkit += webkitgtk-1.0 xcb xcb-render xcb-shm xml2 z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="${CFLAGS} -pthread" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS} -pthread" \
			-DWITH_PYTHON:BOOL=ON \
			-DWITH_PERL:BOOL=ON \
			-DWITH_GNOME:BOOL=ON \
			-DWITH_VALA:BOOL=ON \
			-DWITH_KDE4:BOOL=OFF \
			-DWITH_DOTNET:BOOL=OFF \
			-DWITH_NM:BOOL=OFF

.if ${FLAVOR:L:Mmozilla}
BUILD_DEPENDS +=	devel/xulrunner/1.9,-devel>=1.9.1
MULTI_PACKAGES +=	-mozilla
CONFIGURE_ARGS +=	-DWITH_MOZJS:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_MOZJS:BOOL=OFF
.endif

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
