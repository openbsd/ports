COMMENT=		library handling all the details of proxy configuration

GH_ACCOUNT=		libproxy
GH_PROJECT=		libproxy
GH_TAGNAME=		0.4.18
SUBST_VARS=		GH_TAGNAME

REVISION=		3

CATEGORIES=		net

SHARED_LIBS +=  proxy          1.1 # 0.0

HOMEPAGE=		https://libproxy.googlecode.com/

MAINTAINER=		Antoine Jacoutot <ajacoutot@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE=	Yes

# order matters: cmake must come before python
MODULES=		devel/cmake \
			lang/python

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=		lang/vala

LIB_DEPENDS=		devel/glib2 \
			lang/duktape \
			x11/dbus


WANTLIB += ${COMPILER_LIBCXX} c dbus-1 duktape gio-2.0 glib-2.0
WANTLIB += gobject-2.0 intl m perl

CONFIGURE_ENV=		LIBlibproxy_VERSION=${LIBproxy_VERSION}
MAKE_ENV=		LIBlibproxy_VERSION=${LIBproxy_VERSION}

CONFIGURE_ARGS=		-DWITH_PERL:BOOL=ON \
			-DPERL_LINK_LIBPERL:BOOL=ON \
			-DWITH_GNOME3:BOOL=ON \
			-DWITH_VALA:BOOL=ON \
			-DWITH_DOTNET:BOOL=OFF \
			-DWITH_NM:BOOL=OFF \
			-DWITH_WEBKIT:BOOL=OFF \
			-DWITH_MOZJS:BOOL=OFF \
			-DWITH_NATUS:BOOL=OFF \
			-DBIPR:BOOL=OFF \
			-DPYTHON3_EXECUTABLE=${MODPY_BIN}

# before bsd.port.arch.mk
DEBUG_PACKAGES=		${BUILD_PACKAGES}

.include <bsd.port.mk>
