# $OpenBSD: Makefile,v 1.5 2020/05/15 09:37:15 bluhm Exp $

COMMENT =	library implementation of OPC UA

VERSION =	1.0.1
REVISION =	2
PKGNAME =	open62541-${VERSION}

GH_ACCOUNT =	open62541
GH_PROJECT =	open62541
GH_TAGNAME =	v.${VERSION}

SHARED_LIBS =	open62541	0.0

CATEGORIES =	misc

HOMEPAGE =	https://open62541.org/

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Mozilla Public License v2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		c m mbedcrypto mbedtls mbedx509 pthread

MODULES =		devel/cmake

# needed to build unit tests and documentation
BUILD_DEPENDS =		devel/check \
			math/graphviz \
			print/texlive/base \
			print/texlive/texmf,-main \
			print/texlive/texmf,-full \
			textproc/py-sphinx
# needed to build with encryption
LIB_DEPENDS =		security/polarssl

CONFIGURE_ARGS =	-DCMAKE_BUILD_TYPE=RelWithDebInfo \
			-DOPEN62541_VERSION=v${VERSION} \
			-DBUILD_SHARED_LIBS=ON \
			-DUA_ENABLE_ENCRYPTION=ON \
			-DUA_NAMESPACE_ZERO=REDUCED \
			-DUA_ENABLE_AMALGAMATION=OFF \
			-DUA_PACK_DEBIAN=ON \
			-DUA_BUILD_TOOLS=ON \
			-DUA_BUILD_UNIT_TESTS=ON

DEBUG_PACKAGES =	${BUILD_PACKAGES}

ALL_TARGET =		all doc_pdf

.include <bsd.port.mk>
