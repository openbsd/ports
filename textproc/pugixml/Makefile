# $OpenBSD: Makefile,v 1.1.1.1 2015/11/30 14:32:27 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	light-weight, simple and fast XML parser for C++

V=		1.7
DISTNAME=	pugixml-$V

SHARED_LIBS +=	pugixml                   0.0 # 1.7

CATEGORIES=	textproc devel

HOMEPAGE=	http://pugixml.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += m stdc++

MASTER_SITES=	http://github.com/zeux/pugixml/releases/download/v$V/

MODULES=	devel/cmake

CONFIGURE_ARGS+= -DBUILD_SHARED_LIBS=on

NO_TEST=	Yes

WRKSRC=	${WRKDIST}/scripts

.include <bsd.port.mk>
