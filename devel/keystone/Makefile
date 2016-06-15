# $OpenBSD: Makefile,v 1.1.1.1 2016/06/15 19:22:31 rpointel Exp $

COMMENT =	multi-platform, multi-architecture assembler framework

GH_ACCOUNT =	keystone-engine
GH_PROJECT =	keystone
GH_TAGNAME =	0.9

SHARED_LIBS =	keystone	0.0

CATEGORIES =	devel

HOMEPAGE =	http://www.keystone-engine.org/

MAINTAINER =	Frederic Cambus <fred@statdns.com>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

MODULES =	devel/cmake \
		lang/clang

MODCLANG_ARCHS = *
MODCLANG_LANGS = c c++

CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=ON

NO_TEST =	Yes

.include <bsd.port.mk>
