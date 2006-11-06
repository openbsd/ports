# $OpenBSD: Makefile,v 1.1.1.1 2006/11/06 10:57:38 msf Exp $

COMMENT=	"provides abstract data types (ADTs)"

VERSION=	0.0.7
DISTNAME=	vanessa_socket-${VERSION}

SHARED_LIBS=	vanessa_socket			0.4	# 0.4

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_socket/${VERSION}/}

WANTLIB=	c

LIB_DEPENDS=	vanessa_logger.>=0.3::devel/vanessa/logger \
		popt.>=0::devel/popt

.include <bsd.port.mk>
