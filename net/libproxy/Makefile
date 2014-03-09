# $OpenBSD: Makefile,v 1.41 2014/03/09 19:46:35 espie Exp $

# sync with ONLY_FOR_ARCHS in devel/spidermonkey
ONLY_FOR_ARCHS-mozilla=	alpha amd64 i386 hppa mips64el mips64 powerpc sparc64

SHARED_ONLY=		Yes

COMMENT-main=		library handling all the details of proxy configuration
COMMENT-mozilla=	pacrunner libproxy plugin for mozilla-based (gecko) browsers
COMMENT-webkit=		pacrunner libproxy plugin for webkit-based browsers

VERSION=		0.4.11
DISTNAME=		libproxy-${VERSION}

PKGNAME-main=		libproxy-${VERSION}
PKGNAME-mozilla=	libproxy-mozilla-${VERSION}
PKGNAME-webkit=		libproxy-webkit-${VERSION}

REVISION-main=		3
REVISION-mozilla=	2
REVISION-webkit=	2

CATEGORIES=		net

SHARED_LIBS +=  proxy          1.1 # 0.0

HOMEPAGE=		https://libproxy.googlecode.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE}/files/

# order matters: cmake must come before python
MODULES=		devel/cmake \
			devel/gettext \
			lang/python

SUBST_VARS+=		VERSION

# webkit = cyclic dependency: libproxy,-webkit -> webkit -> libsoup -> libproxy
# mozilla = devel/spidermonkey does not build on all arches
PSEUDO_FLAVORS=		no_mozilla no_webkit bootstrap
FLAVOR?=		no_mozilla no_webkit bootstrap

MULTI_PACKAGES=		-main -mozilla -webkit

BUILD_DEPENDS=		lang/vala

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/glib2

RUN_DEPENDS-mozilla=	# empty
LIB_DEPENDS-mozilla=	${BUILD_PKGPATH}>=${VERSION} \
			devel/spidermonkey>=17.0,<18.0

RUN_DEPENDS-webkit=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-webkit=	STEM->=${VERSION}:${BUILD_PKGPATH}, \
			www/webkit,gtk3

cWANTLIB += m stdc++

WANTLIB-main += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-main += c gio-2.0 glib-2.0 gobject-2.0 perl pthread

WANTLIB-mozilla += ${cWANTLIB} mozjs-17.0 proxy

WANTLIB-webkit += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-webkit += glib-2.0 javascriptcoregtk-3.0 proxy

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

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-mozilla}
CONFIGURE_ARGS +=	-DWITH_MOZJS:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_MOZJS:BOOL=OFF
.endif

.if ${BUILD_PACKAGES:M-webkit}
CONFIGURE_ARGS +=	-DWITH_WEBKIT3:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_WEBKIT:BOOL=OFF
.endif

.include <bsd.port.mk>
