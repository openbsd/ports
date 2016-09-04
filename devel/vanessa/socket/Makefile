# $OpenBSD: Makefile,v 1.8 2016/09/04 12:41:40 giovanni Exp $

COMMENT=	provides simplified TCP/IP socket operations

VERSION=	0.0.13
DISTNAME=	vanessa_socket-${VERSION}

SHARED_LIBS=	vanessa_socket			1.0	# 3.0

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_socket/${VERSION}/}

MODULES=	devel/gettext
WANTLIB=	c vanessa_logger>=1.0 popt

LIB_DEPENDS=	vanessa_logger->=0.0.10:devel/vanessa/logger \
		devel/popt

.include <bsd.port.mk>
