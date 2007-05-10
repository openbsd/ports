# $OpenBSD: Makefile,v 1.1.1.1 2007/05/10 11:17:20 ajacoutot Exp $

COMMENT=	"filesystem benchmark"

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

.include <bsd.port.mk>
