# $OpenBSD: Makefile,v 1.15 2019/11/02 08:48:07 fcambus Exp $

COMMENT=	test tool for slow HTTP reads/posts

GH_ACCOUNT=	shekyan
GH_PROJECT=	slowhttptest
GH_TAGNAME=	v1.8.1

CATEGORIES=	www security

MAINTAINER=	Frederic Cambus <fcambus@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c m ssl ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
