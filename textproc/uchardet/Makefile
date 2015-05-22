# $OpenBSD: Makefile,v 1.3 2015/05/22 11:31:19 ajacoutot Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.1
REVISION=	1

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/uchardet/

# MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m stdc++

MASTER_SITES=	https://uchardet.googlecode.com/files/

MODULES=	devel/cmake

.include <bsd.port.mk>
