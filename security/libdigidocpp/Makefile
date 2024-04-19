COMMENT =		library for creating DigiDoc signature files

V =			3.17.1
DISTNAME =		libdigidocpp-${V}
CATEGORIES =		security

SHARED_LIBS =		digidocpp	4.0	# 0.0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# libdigidocpp: LGPL 2.1+
# minizip: zlib
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.id.ee/
SITES =			https://github.com/open-eid/libdigidocpp/releases/download/v${V}/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# -std=gnu++17
COMPILER =		base-clang ports-gcc

WANTLIB +=		${COMPILER_LIBCXX} c crypto m ssl
WANTLIB +=		xerces-c xml-security-c z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost \
			devel/xsd>=4.0 \
			editors/vim,-main

LIB_DEPENDS =		security/xml-security-c \
			textproc/xerces-c

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
