# $OpenBSD: Makefile,v 1.13 2015/07/14 13:26:27 dcoppa Exp $

COMMENT =	small JSON library written in ANSI C

GH_ACCOUNT =	lloyd
GH_PROJECT =	yajl
GH_TAGNAME =	2.1.0
DISTNAME =	${GH_PROJECT}-${GH_TAGNAME}
PKGNAME =	lib${DISTNAME}

CATEGORIES =	devel

SHARED_LIBS =	yajl	2.1	# 2.1.0

HOMEPAGE =	https://lloyd.github.io/yajl/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c m

MODULES =	devel/cmake

.include <bsd.port.mk>
