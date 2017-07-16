# $OpenBSD: Makefile,v 1.6 2017/07/16 19:19:03 espie Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.1
REVISION=	1

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/uchardet/

# MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${COMPILER_LIBCXX}

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=uchardet/}

MODULES=	devel/cmake

.include <bsd.port.mk>
