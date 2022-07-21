COMMENT =		library for creating DigiDoc signature files

V =			3.14.8
DISTNAME =		libdigidocpp-${V}
REVISION =		2
CATEGORIES =		security

SHARED_LIBS =		digidocpp	0.0	# 0.0

DEBUG_PACKAGES =	${BUILD_PACKAGES}

# libdigidocpp: LGPL 2.1+
# minizip: zlib
PERMIT_PACKAGE =	Yes

HOMEPAGE =		https://www.id.ee/
MASTER_SITES =		https://github.com/open-eid/libdigidocpp/releases/download/v${V}/

# ${WRKSRC}/etc/schema/.../*.xsd.orig
PATCHORIG =		.pat.orig

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# C++11
COMPILER =		base-clang ports-gcc

WANTLIB +=		${COMPILER_LIBCXX} c crypto iconv m ssl xalan-c
WANTLIB +=		xerces-c xml-security-c z

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/boost \
			devel/xsd>=4.0 \
			editors/vim,-main

LIB_DEPENDS =		converters/libiconv \
			security/xml-security-c \
			textproc/xalan-c \
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

# uses deprecated PoDoFo API and implies OpenSSL 1.0.2
# https://github.com/open-eid/libdigidocpp/issues/450
CONFIGURE_ARGS +=	-DCMAKE_DISABLE_FIND_PACKAGE_PoDoFo=ON

CONFIGURE_ENV +=	LDFLAGS=${LDFLAGS:Q}

# dlopen()'ed "opensc-pkcs11.so" in libdigidocpp.so
LIB_DEPENDS +=		security/opensc
# alternative to https://github.com/open-eid/cmake/pull/35
CONFIGURE_ARGS +=	-DCMAKE_SHARED_LINKER_FLAGS="${LDFLAGS} \
			    -Wl,-rpath,/usr/local/lib/pkcs11"

# fix src/minizip/ioapi.c warnings: off_t is always 64 bit,
# no need for ftello64()
# see upstream "Avoid f*64() on BSDs" https://github.com/madler/zlib/pull/678
CFLAGS +=		-DIOAPI_NO_64

.include <bsd.port.mk>
