# $OpenBSD: Makefile,v 1.32 2013/02/09 14:49:52 sthen Exp $

SHARED_ONLY=		Yes

COMMENT-main=		library handling all the details of proxy configuration
COMMENT-mozilla=	pacrunner libproxy plugin for mozilla-based (gecko) browsers
COMMENT-webkit=		pacrunner libproxy plugin for webkit-based browsers

VERSION=		0.4.10
DISTNAME=		libproxy-${VERSION}

PKGNAME-main=		libproxy-${VERSION}
PKGNAME-mozilla=	libproxy-mozilla-${VERSION}
PKGNAME-webkit=		libproxy-webkit-${VERSION}

CATEGORIES=		net

SHARED_LIBS +=  proxy          1.1 # 0.0

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

SUBST_VARS+=		VERSION

# do not enable webkit support by default because of cyclic dependency:
#     libproxy,-webkit -> webkit -> libsoup -> libproxy
# do not enable mozilla support by default, xulrunner doesn't build on all arches
PSEUDO_FLAVORS=		webkit
# XXX needs mozilla-js>=2.0b12; re-enable in net/Makefile when FLAVOR is back
#PSEUDO_FLAVORS +=	mozilla
FLAVOR?=

MULTI_PACKAGES=		-main

BUILD_DEPENDS=		lang/vala

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/glib2

RUN_DEPENDS-mozilla=	# empty
LIB_DEPENDS-mozilla=	${BUILD_PKGPATH}>=${VERSION} \
			devel/xulrunner/1.9 \
			devel/nspr

RUN_DEPENDS-webkit=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-webkit=	STEM->=${VERSION}:${BUILD_PKGPATH}, \
			www/webkit,gtk3

cWANTLIB += m stdc++

WANTLIB-main += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-main += c gio-2.0 glib-2.0 gobject-2.0 perl pthread

WANTLIB-mozilla += ${cWANTLIB} c modman nspr4 plc4 plds4 proxy
WANTLIB-mozilla += xulrunner1.9/mozjs

WANTLIB-webkit += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-webkit += GL X11 Xrender atk-1.0 cairo cairo-gobject expat fontconfig
WANTLIB-webkit += freetype gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-webkit += gtk-3 javascriptcoregtk-3.0 pango-1.0 pangocairo-1.0
WANTLIB-webkit += pangoft2-1.0 pixman-1 png proxy pthread-stubs soup-2.4
WANTLIB-webkit += webkitgtk-3.0 xcb xcb-render xcb-shm z

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DCMAKE_BUILD_TYPE:STRING=Release \
			-DWITH_PYTHON:BOOL=ON \
			-DWITH_PERL:BOOL=ON \
			-DWITH_GNOME3:BOOL=ON \
			-DWITH_VALA:BOOL=ON \
			-DWITH_KDE4:BOOL=OFF \
			-DWITH_DOTNET:BOOL=OFF \
			-DWITH_NM:BOOL=OFF \
			-DBIPR:BOOL=OFF

.if ${FLAVOR:Mmozilla}
BUILD_DEPENDS +=	devel/xulrunner/1.9,-devel>=1.9.1
MULTI_PACKAGES +=	-mozilla
CONFIGURE_ARGS +=	-DWITH_MOZJS:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_MOZJS:BOOL=OFF
.endif

.if ${FLAVOR:Mwebkit}
MULTI_PACKAGES +=	-webkit
CONFIGURE_ARGS +=	-DWITH_WEBKIT3:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_WEBKIT:BOOL=OFF
.endif

.include <bsd.port.mk>
