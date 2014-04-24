# $OpenBSD: Makefile,v 1.2 2014/04/24 19:13:28 schwarze Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.1
REVISION=	0

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/uchardet/

# MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=	https://uchardet.googlecode.com/files/

MODULES=	devel/cmake

.include <bsd.port.mk>
