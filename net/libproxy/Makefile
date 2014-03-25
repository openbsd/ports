# $OpenBSD: Makefile,v 1.42 2014/03/25 11:18:46 ajacoutot Exp $

SHARED_ONLY=		Yes

COMMENT-main=		library handling all the details of proxy configuration
COMMENT-webkit=		pacrunner libproxy plugin for webkit-based browsers

VERSION=		0.4.11
DISTNAME=		libproxy-${VERSION}

PKGNAME-main=		libproxy-${VERSION}
PKGNAME-webkit=		libproxy-webkit-${VERSION}

REVISION-main=		3
REVISION-webkit=	3

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

# cyclic dependency: libproxy,-webkit -> webkit -> gtk+3|libsoup -> glib2-networking -> libproxy
PSEUDO_FLAVORS=		no_webkit bootstrap
FLAVOR?=		no_webkit bootstrap

MULTI_PACKAGES=		-main -webkit

BUILD_DEPENDS=		lang/vala

RUN_DEPENDS-main=	${MODGETTEXT_RUN_DEPENDS} \
			${MODPY_RUN_DEPENDS}
LIB_DEPENDS-main=	${LIB_DEPENDS} \
			devel/glib2

RUN_DEPENDS-webkit=	${MODGETTEXT_RUN_DEPENDS}
LIB_DEPENDS-webkit=	STEM->=${VERSION}:${BUILD_PKGPATH}, \
			www/webkit,gtk3

cWANTLIB += m stdc++

WANTLIB-main += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-main += c gio-2.0 glib-2.0 gobject-2.0 perl pthread

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
			-DWITH_MOZJS:BOOL=OFF \
			-DBIPR:BOOL=OFF

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-webkit}
CONFIGURE_ARGS +=	-DWITH_WEBKIT3:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_WEBKIT:BOOL=OFF
.endif

.include <bsd.port.mk>
