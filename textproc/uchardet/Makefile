# $OpenBSD: Makefile,v 1.4 2016/10/01 11:54:17 naddy Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.1
REVISION=	1

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/uchardet/

# MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=uchardet/}

MODULES=	devel/cmake

.include <bsd.port.mk>
