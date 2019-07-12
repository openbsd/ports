# $OpenBSD: Makefile,v 1.11 2019/07/12 20:49:43 sthen Exp $

COMMENT =	third-party client for Google Drive

VERSION =	0.5.0
DISTNAME =	grive2-${VERSION}
REVISION =	2

CATEGORIES =	sysutils

MAINTAINER =	Rafael Sadowski <rsadowski@openbsd.org>

HOMEPAGE = 	http://yourcmc.ru/wiki/Grive2

GH_ACCOUNT =	vitalif
GH_PROJECT =	grive2
GH_COMMIT =	ae06eccb38b2fe250c9ddeac3e3973f80b8a0aa9

# GPLv2 only
PERMIT_PACKAGE =	Yes

WANTLIB += boost_filesystem-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_unit_test_framework-mt c curl
WANTLIB += expat gcrypt gpg-error iberty m pthread yajl z ${COMPILER_LIBCXX}

MODULES =	devel/cmake

COMPILER =	base-clang ports-gcc

CXXFLAGS +=	-I${LOCALBASE}/include


LIB_DEPENDS =	devel/boost \
		devel/libyajl \
		net/curl \
		security/libgcrypt

.include <bsd.port.mk>
