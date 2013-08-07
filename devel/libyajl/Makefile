# $OpenBSD: Makefile,v 1.10 2013/08/07 21:57:45 naddy Exp $

COMMENT =	small JSON library written in ANSI C

V =		2.0.4
PKGNAME =	libyajl-${V}
DISTNAME =	lloyd-yajl-${V}
REVISION =	0

CATEGORIES =	devel

SHARED_LIBS =	yajl	2.0	# 2.0.4

HOMEPAGE =	https://lloyd.github.com/yajl/

MASTER_SITES =	http://distfiles.nl/ \
		https://github.com/lloyd/yajl/tarball/${V}/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c

MODULES =	devel/cmake

.include <bsd.port.mk>
