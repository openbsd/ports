# $OpenBSD: Makefile,v 1.5 2017/05/31 08:08:15 espie Exp $

COMMENT =	multi-platform, multi-architecture assembler framework

GH_ACCOUNT =	keystone-engine
GH_PROJECT =	keystone
GH_TAGNAME =	0.9.1
REVISION =	0

SHARED_LIBS =	keystone	1.0

CATEGORIES =	devel

HOMEPAGE =	http://www.keystone-engine.org/

MAINTAINER =	Frederic Cambus <fcambus@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=	c m

MODULES =	devel/cmake

# atomics
COMPILER =	clang


CONFIGURE_ARGS = -DBUILD_SHARED_LIBS=ON

NO_TEST =	Yes

.include <bsd.port.mk>
