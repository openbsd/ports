# $OpenBSD: Makefile,v 1.9 2019/03/21 16:11:42 jca Exp $

COMMENT=	light-weight, simple and fast XML parser for C++

V=		1.7
DISTNAME=	pugixml-$V
REVISION =	4

SHARED_LIBS +=	pugixml                   0.1 # 1.7

CATEGORIES=	textproc devel

HOMEPAGE=	http://pugixml.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=	http://github.com/zeux/pugixml/releases/download/v$V/

MODULES=	devel/cmake

CONFIGURE_ARGS+= -DBUILD_SHARED_LIBS=on

NO_TEST=	Yes

WRKSRC=	${WRKDIST}/scripts

.include <bsd.port.mk>
