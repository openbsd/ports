# $OpenBSD: Makefile,v 1.3 2010/11/08 12:29:24 espie Exp $

COMMENT=	provides abstract data types (ADTs)

VERSION=	0.0.6
DISTNAME=	vanessa_adt-${VERSION}

SHARED_LIBS=	vanessa_adt			0.3	# 0.3

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_adt/${VERSION}/}

LIB_DEPENDS=	::devel/vanessa/logger
WANTLIB =	vanessa_logger.>=0.3

.include <bsd.port.mk>
