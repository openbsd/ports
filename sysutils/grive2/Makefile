# $OpenBSD: Makefile,v 1.2 2016/01/18 09:31:42 benoit Exp $

COMMENT =	third-party client for Google Drive

VERSION =	0.5.0
DISTNAME =	grive2-${VERSION}

CATEGORIES =	sysutils

MAINTAINER =	Rafael Sadowski <rafael@sizeofvoid.org>

HOMEPAGE = 	http://yourcmc.ru/wiki/Grive2

GH_ACCOUNT =	vitalif
GH_PROJECT =	grive2
GH_COMMIT =	ae06eccb38b2fe250c9ddeac3e3973f80b8a0aa9

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
