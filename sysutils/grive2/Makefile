# $OpenBSD: Makefile,v 1.1.1.1 2015/11/30 11:56:15 sthen Exp $

COMMENT =	third-party client for Google Drive

VERSION =	0.4.2-dev
DISTNAME =	grive2-${VERSION}
PKGNAME =	grive2-${VERSION:S/-dev//}

CATEGORIES =	sysutils

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

HOMEPAGE = 	http://yourcmc.ru/wiki/Grive2

GH_ACCOUNT =	vitalif
GH_PROJECT =	grive2
GH_COMMIT =	44cb91f94e67bcdad77ca564b4d8083cedf72251

# GPLv2 only
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += boost_filesystem-mt boost_program_options-mt boost_regex-mt
WANTLIB += boost_system-mt boost_unit_test_framework-mt c curl
WANTLIB += expat gcrypt gpg-error iberty m pthread yajl z

MODULES =	devel/cmake \
		gcc4

MODGCC4_LANGS =	c++
MODGCC4_ARCHS =	*

LIB_DEPENDS =	devel/boost \
		devel/libyajl \
		net/curl \
		security/libgcrypt

.include <bsd.port.mk>
