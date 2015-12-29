# $OpenBSD: Makefile,v 1.14 2015/12/29 19:49:39 jasper Exp $

COMMENT =	small JSON library written in ANSI C

GH_ACCOUNT =	lloyd
GH_PROJECT =	yajl
GH_TAGNAME =	2.1.0
PKGNAME =	lib${DISTNAME}

CATEGORIES =	devel

SHARED_LIBS =	yajl	2.1	# 2.1.0

HOMEPAGE =	https://lloyd.github.io/yajl/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m

MODULES =	devel/cmake

.include <bsd.port.mk>
