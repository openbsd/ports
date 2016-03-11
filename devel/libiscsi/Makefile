# $OpenBSD: Makefile,v 1.3 2016/03/11 19:59:13 naddy Exp $

COMMENT=	client-side library to implement the iSCSI protocol

DISTNAME=	libiscsi-1.15.0
REVISION=	0
CATEGORIES=	devel net
MASTER_SITES=	https://sites.google.com/site/libiscsitarballs/libiscsitarballs/

SHARED_LIBS=	iscsi	0.0

HOMEPAGE=	https://github.com/sahlberg/libiscsi

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv2+ and PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
