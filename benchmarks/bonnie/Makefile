# $OpenBSD: Makefile,v 1.4 2000/02/12 06:29:50 turan Exp $

DISTNAME=       Bonnie
PKGNAME=	bonnie-1.0
CATEGORIES=	benchmarks

MAINTAINER=	niklas@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

MASTER_SITES=   ftp://ftp.sunet.se/pub/benchmark/Bonnie/ \
		ftp://swedishchef.lerc.nasa.gov/drlabs/io/
EXTRACT_SUFX=   .tar.Z

CFLAGS+=	-static

.include <bsd.port.mk>
