# $OpenBSD: Makefile,v 1.3 2010/10/18 16:57:46 espie Exp $

COMMENT=	filesystem benchmark

DISTNAME=	blogbench-1.0
CATEGORIES=	benchmarks

HOMEPAGE=	http://www.pureftpd.org/project/blogbench

# ISC
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://download.pureftpd.org/pub/blogbench/ \
		ftp://ftp.pureftpd.org/pub/pure-ftpd/misc/blogbench/

WANTLIB=	c pthread

CONFIGURE_STYLE=gnu
USE_GROFF =	Yes

.include <bsd.port.mk>
