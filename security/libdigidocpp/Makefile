COMMENT =		library for creating DigiDoc signature files

V =			4.0.0
DISTNAME =		libdigidocpp-${V}
CATEGORIES =		security
REVISION =		0

SHARED_LIBS =		digidocpp	5.0	# 0.0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# libdigidocpp: LGPL 2.1+
# minizip: zlib
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.id.ee/
SITES =			https://github.com/open-eid/libdigidocpp/releases/download/v${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# -std=gnu++17
COMPILER =		base-clang ports-gcc

WANTLIB +=		${COMPILER_LIBCXX} c crypto ltdl m minizip ssl xml2
WANTLIB +=		xmlsec1 xmlsec1-openssl xslt z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost \
			devel/xsd>=4.0 \
			editors/vim,-main

LIB_DEPENDS =		archivers/minizip \
			devel/libtool,-ltdl \
			security/xmlsec \
			textproc/libxml

RUN_DEPENDS =		# empty

# move DIGIDOCPP_CONFIG_DIR out of /usr/local/ into /etc/ (PLIST @sample)
CONFIGURE_ARGS =	-DCMAKE_INSTALL_SYSCONFDIR=share/examples

# skip documentation and heavy dependency (for now)
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_Doxygen=ON

# no idea if/where JNI is packaged, just disable uneeded Java parts (for now)
#LIB_DEPENDS +=		devel/swig
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_JNI=ON \
			-DCMAKE_DISABLE_FIND_PACKAGE_SWIG=ON

CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in libdigidocpp.so
BUILD_DEPENDS +=	security/opensc
RUN_DEPENDS +=		security/opensc
# alternative to https://github.com/open-eid/cmake/pull/35
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

.include <bsd.port.mk>
