# $OpenBSD: Makefile,v 1.1.1.1 2020/06/07 08:06:42 sthen Exp $

COMMENT=	fast, indexed regexp search over large file trees

V=		1.2.0
MODGO_MODNAME=	github.com/google/codesearch
MODGO_VERSION=	v$V

DISTNAME=	codesearch-v$V
PKGNAME=	codesearch-$V

CATEGORIES=	textproc devel

HOMEPAGE=	https://github.com/google/codesearch

# BSD
PERMIT_PACKAGE=	Yes

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

MODULES=	lang/go

NO_TEST=	Yes

.include <bsd.port.mk>
