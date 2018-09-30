# $OpenBSD: Makefile,v 1.4 2018/09/30 10:58:44 ajacoutot Exp $

COMMENT=	client library for accessing NFS

DISTNAME=	libnfs-2.0.0
CATEGORIES=	devel net
MASTER_SITES=	https://sites.google.com/site/libnfstarballs/li/

SHARED_LIBS=	nfs	1.0

HOMEPAGE=	https://github.com/sahlberg/libnfs

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv3+ and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c

CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
