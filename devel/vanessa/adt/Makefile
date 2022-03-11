COMMENT=	provides abstract data types (ADTs)

VERSION=	0.0.9
DISTNAME=	vanessa_adt-${VERSION}

SHARED_LIBS=	vanessa_adt			1.0	# 1.0

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_adt/${VERSION}/}

LIB_DEPENDS=	vanessa_logger->=0.0.10:devel/vanessa/logger
WANTLIB =	vanessa_logger>=1.0

.include <bsd.port.mk>
