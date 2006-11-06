# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 10:57:38 msf Exp $

COMMENT=	"provides abstract data types (ADTs)"

VERSION=	0.0.6
DISTNAME=	vanessa_adt-${VERSION}

SHARED_LIBS=	vanessa_adt			0.3	# 0.3

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_adt/${VERSION}/}

LIB_DEPENDS=	vanessa_logger.>=0.3::devel/vanessa/logger

.include <bsd.port.mk>
