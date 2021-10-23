# $OpenBSD: Makefile,v 1.3 2021/10/11 08:43:00 landry Exp $

COMMENT =	high performance C++ OpenPGP library and tools

GH_ACCOUNT =	rnpgp
GH_PROJECT =	rnp
GH_TAGNAME =	v0.15.2
REVISION =	0
SHARED_LIBS =	rnp 0.0

CATEGORIES =	security

HOMEPAGE =	https://www.rnpgp.org/

# BSD / Apache v2 ?
PERMIT_PACKAGE=	Yes

LIB_DEPENDS +=	security/botan2 \
		archivers/bzip2 \
		devel/json-c

WANTLIB +=	${COMPILER_LIBCXX} botan-2 bz2 c json-c m z

BUILD_DEPENDS =	textproc/asciidoctor \
		devel/gtest \
		security/gnupg

MODULES =	devel/cmake \
		lang/python

MODPY_RUNDEP =	No

CONFIGURE_ARGS +=	-DGIT_EXECUTABLE=true \
			-DBUILD_SHARED_LIBS=on \
			-DDOWNLOAD_GTEST=Off \
			-DDOWNLOAD_RUBYRNP=Off

.include <bsd.port.mk>
