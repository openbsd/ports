# $OpenBSD: Makefile,v 1.27 2000/09/08 23:28:12 brad Exp $

DISTNAME=	nmap-2.54BETA4
PKGNAME=	nmap-2.54b4
CATEGORIES=	net security
NEED_VERSION=	1.320
MASTER_SITES=	http://www.insecure.org/nmap/dist/
EXTRACT_SUFX=	.tgz

HOMEPAGE=	http://www.insecure.org/nmap/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CCOPT="${CFLAGS}"

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--no-recursion

ALL_TARGET=	nmap

.include <bsd.port.mk>
