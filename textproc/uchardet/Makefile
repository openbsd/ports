# $OpenBSD: Makefile,v 1.7 2017/07/23 09:26:29 espie Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.1
REVISION =	2

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/uchardet/

# MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=uchardet/}

MODULES=	devel/cmake

.include <bsd.port.mk>
