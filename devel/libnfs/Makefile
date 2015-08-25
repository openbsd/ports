# $OpenBSD: Makefile,v 1.1.1.1 2015/08/25 06:40:04 ajacoutot Exp $

COMMENT=	client library for accessing NFS

DISTNAME=	libnfs-1.9.8
CATEGORIES=	devel net
MASTER_SITES=	https://sites.google.com/site/libnfstarballs/li/

SHARED_LIBS=	nfs	0.0

HOMEPAGE=	https://github.com/sahlberg/libnfs

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv3+ and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
