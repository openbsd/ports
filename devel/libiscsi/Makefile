# $OpenBSD: Makefile,v 1.1.1.1 2015/08/25 06:40:28 ajacoutot Exp $

COMMENT=	client-side library to implement the iSCSI protocol

DISTNAME=	libiscsi-1.15.0
CATEGORIES=	devel net
MASTER_SITES=	https://sites.google.com/site/libiscsitarballs/libiscsitarballs/

SHARED_LIBS=	iscsi	0.0

HOMEPAGE=	https://github.com/sahlberg/libiscsi

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv2+ and PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
