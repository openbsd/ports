# $OpenBSD: Makefile,v 1.7 2015/05/22 11:31:14 ajacoutot Exp $

COMMENT=	provides simplified TCP/IP socket operations

VERSION=	0.0.12
DISTNAME=	vanessa_socket-${VERSION}
REVISION=	0

SHARED_LIBS=	vanessa_socket			1.0	# 3.0

MASTER_SITES=	${MASTER_SITE_VANESSA:=vanessa_socket/${VERSION}/}

MODULES=	devel/gettext
WANTLIB=	c vanessa_logger>=1.0 popt

LIB_DEPENDS=	vanessa_logger->=0.0.10:devel/vanessa/logger \
		devel/popt

.include <bsd.port.mk>
