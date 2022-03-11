COMMENT =	library implementation of OPC UA

VERSION =	1.0.6
REVISION =	0
DISTNAME =	open62541-${VERSION}
PKGNAME =	open62541-${VERSION}

SHARED_LIBS =	open62541	1.0

CATEGORIES =	misc

HOMEPAGE =	https://open62541.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Mozilla Public License v2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c m mbedcrypto mbedtls mbedx509 pthread

MASTER_SITES =		https://github.com/open62541/open62541/
MASTER_SITES0 =		https://github.com/OPCFoundation/UA-Nodeset/archive/
DISTFILES =		open62541-{archive/refs/tags/v}${VERSION}.tar.gz \
			UA-1.04.5-2020-03-06.tar.gz:0

MODULES =		devel/cmake

# needed to build unit tests and documentation
BUILD_DEPENDS =		devel/check \
			math/graphviz \
			print/texlive/base \
			print/texlive/texmf,-main \
			print/texlive/texmf,-full \
			textproc/py-sphinx,python3 \
			textproc/py-sphinx_rtd_theme,python3
# needed to build with encryption
LIB_DEPENDS =		security/polarssl

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DOPEN62541_VERSION=v${VERSION} \
			-DBUILD_SHARED_LIBS=ON \
			-DUA_ENABLE_ENCRYPTION=ON \
			-DUA_ENABLE_AMALGAMATION=OFF \
			-DUA_PACK_DEBIAN=ON \
			-DUA_BUILD_TOOLS=ON \
			-DUA_BUILD_UNIT_TESTS=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =		all doc_pdf

FLAVORS =		ns0_full
FLAVOR ?=

.if ${FLAVOR:Mns0_full}
CONFIGURE_ARGS +=	-DUA_NAMESPACE_ZERO=FULL \
			-DUA_ENABLE_MICRO_EMB_DEV_PROFILE=ON
.else
CONFIGURE_ARGS +=	-DUA_NAMESPACE_ZERO=REDUCED
.endif

.if ${FLAVOR:Mns0_full}
post-extract:
	rmdir ${WRKSRC}/deps/ua-nodeset/
	mv ${WRKDIR}/UA-Nodeset-UA-*/ ${WRKSRC}/deps/ua-nodeset/
.endif

.include <bsd.port.mk>
