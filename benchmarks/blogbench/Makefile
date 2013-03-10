# $OpenBSD: Makefile,v 1.4 2013/03/10 23:04:44 espie Exp $

COMMENT=	filesystem benchmark

DISTNAME=	blogbench-1.0
CATEGORIES=	benchmarks

HOMEPAGE=	http://www.pureftpd.org/project/blogbench

# ISC
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	http://download.pureftpd.org/pub/blogbench/ \
		ftp://ftp.pureftpd.org/pub/pure-ftpd/misc/blogbench/

WANTLIB=	c pthread

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
