# $OpenBSD: Makefile,v 1.5 2017/04/10 11:46:34 sthen Exp $

COMMENT=	universal charset detection library and tool

DISTNAME=	uchardet-0.0.1
REVISION=	1

SHARED_LIBS +=	uchardet                  0.0 # 0.0

CATEGORIES=	textproc

HOMEPAGE=	https://code.google.com/p/uchardet/

# MPL 1.1
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c m ${LIBCXX}

MASTER_SITES=	${MASTER_SITE_GOOGLECODE:=uchardet/}

MODULES=	devel/cmake

.include <bsd.port.mk>
