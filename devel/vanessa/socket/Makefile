# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:13 espie Exp $

COMMENT=	provides abstract data types (ADTs)

VERSION=	0.0.7
DISTNAME=	vanessa_socket-${VERSION}

SHARED_LIBS=	vanessa_socket			0.4	# 0.4

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_socket/${VERSION}/}

WANTLIB=	c

USE_GROFF =	Yes
LIB_DEPENDS=	vanessa_logger.>=0.3::devel/vanessa/logger \
		popt.>=0::devel/popt

.include <bsd.port.mk>
