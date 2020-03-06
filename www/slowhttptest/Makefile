# $OpenBSD: Makefile,v 1.17 2020/03/06 15:26:18 espie Exp $

COMMENT=	test tool for slow HTTP reads/posts

GH_ACCOUNT=	shekyan
GH_PROJECT=	slowhttptest
GH_TAGNAME=	v1.8.1
REVISION=	0

CATEGORIES=	www security

MAINTAINER=	Frederic Cambus <fcambus@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += c m ssl ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

SEPARATE_BUILD=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
