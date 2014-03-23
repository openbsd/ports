# $OpenBSD: Makefile,v 1.1.1.1 2014/03/23 21:10:57 sthen Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.1

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/uchardet/

# MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=	https://uchardet.googlecode.com/files/

MODULES=	devel/cmake

.include <bsd.port.mk>
