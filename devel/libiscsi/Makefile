# $OpenBSD: Makefile,v 1.4 2019/05/23 08:50:29 ajacoutot Exp $

COMMENT=	client-side library to implement the iSCSI protocol

DISTNAME=	libiscsi-1.18.0
CATEGORIES=	devel net
MASTER_SITES=	https://sites.google.com/site/libiscsitarballs/libiscsitarballs/

SHARED_LIBS=	iscsi	1.0

HOMEPAGE=	https://github.com/sahlberg/libiscsi

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv2+ and PD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
