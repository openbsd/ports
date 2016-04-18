# $OpenBSD: Makefile,v 1.48 2016/04/18 17:44:40 awolk Exp $

COMMENT-main=		library handling all the details of proxy configuration
COMMENT-webkit=		pacrunner libproxy plugin for webkit-based browsers

GH_ACCOUNT=		libproxy
GH_PROJECT=		libproxy
GH_TAGNAME=		0.4.12
REVISION=		0
REVISION-main=		1
SUBST_VARS=		GH_TAGNAME

PKGNAME-main=		${DISTNAME}
PKGNAME-webkit=		${GH_PROJECT}-webkit-${GH_TAGNAME}

CATEGORIES=		net

SHARED_LIBS +=  proxy          1.1 # 0.0

HOMEPAGE=		https://libproxy.googlecode.com/

# LGPLv2.1
PERMIT_PACKAGE_CDROM=	Yes

# order matters: cmake must come before python
MODULES=		devel/cmake \
			devel/gettext \
			lang/python

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
LIB_DEPENDS-webkit=	STEM->=${GH_TAGNAME}:${BUILD_PKGPATH}, \
			www/webkitgtk4

cWANTLIB += m stdc++

WANTLIB-main += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-main += c gio-2.0 glib-2.0 gobject-2.0 perl pthread

WANTLIB-webkit += ${cWANTLIB} ${MODGETTEXT_WANTLIB}
WANTLIB-webkit += glib-2.0 javascriptcoregtk-4.0 proxy pthread

CONFIGURE_ENV=	LIBlibproxy_VERSION=${LIBproxy_VERSION}
MAKE_ENV=	LIBlibproxy_VERSION=${LIBproxy_VERSION}

CONFIGURE_ARGS=		-DCMAKE_C_FLAGS="${CFLAGS}" \
			-DCMAKE_CXX_FLAGS="${CXXFLAGS}" \
			-DWITH_PYTHON:BOOL=ON \
			-DWITH_PERL:BOOL=ON \
			-DWITH_GNOME3:BOOL=ON \
			-DWITH_VALA:BOOL=ON \
			-DWITH_DOTNET:BOOL=OFF \
			-DWITH_NM:BOOL=OFF \
			-DWITH_MOZJS:BOOL=OFF \
			-DWITH_NATUS:BOOL=OFF \
			-DBIPR:BOOL=OFF

.include <bsd.port.arch.mk>
.if ${BUILD_PACKAGES:M-webkit}
CONFIGURE_ARGS +=	-DWITH_WEBKIT3:BOOL=ON
.else
CONFIGURE_ARGS +=	-DWITH_WEBKIT:BOOL=OFF
.endif

.include <bsd.port.mk>
