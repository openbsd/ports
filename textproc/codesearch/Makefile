# $OpenBSD: Makefile,v 1.2 2020/07/11 22:54:40 sthen Exp $

COMMENT=	fast, indexed regexp search over large file trees

V=		1.2.0
MODGO_MODNAME=	github.com/google/codesearch
MODGO_VERSION=	v$V

DISTNAME=	codesearch-v$V
PKGNAME=	codesearch-$V
REVISION=	0

CATEGORIES=	textproc devel

HOMEPAGE=	https://github.com/google/codesearch

# BSD
PERMIT_PACKAGE=	Yes

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

MODULES=	lang/go

NO_TEST=	Yes

.include <bsd.port.mk>
