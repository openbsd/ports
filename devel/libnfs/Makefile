# $OpenBSD: Makefile,v 1.2 2016/03/11 19:59:13 naddy Exp $

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

.include <bsd.port.mk>
