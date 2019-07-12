# $OpenBSD: Makefile,v 1.6 2019/07/12 20:44:39 sthen Exp $

COMMENT=	client library for accessing NFS

DISTNAME=	libnfs-4.0.0
CATEGORIES=	devel net
MASTER_SITES=	https://github.com/sahlberg/libnfs/archive/

SHARED_LIBS=	nfs	2.0

HOMEPAGE=	https://github.com/sahlberg/libnfs

MAINTAINER=	Brad Smith <brad@comstyle.com>

# LGPLv2.1+, GPLv3+ and BSD
PERMIT_PACKAGE=	Yes

WANTLIB=	c

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.16

CONFIGURE_STYLE= autoreconf

WRKDIST=	${WRKDIR}/libnfs-${DISTNAME}

.include <bsd.port.mk>
