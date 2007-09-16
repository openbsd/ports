# $OpenBSD: Makefile,v 1.2 2007/09/16 02:53:14 merdely Exp $

COMMENT=	provides abstract data types (ADTs)

VERSION=	0.0.6
DISTNAME=	vanessa_adt-${VERSION}

SHARED_LIBS=	vanessa_adt			0.3	# 0.3

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_adt/${VERSION}/}

LIB_DEPENDS=	vanessa_logger.>=0.3::devel/vanessa/logger

.include <bsd.port.mk>
