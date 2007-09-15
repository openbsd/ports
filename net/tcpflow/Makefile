# $OpenBSD: Makefile,v 1.16 2007/09/15 22:36:59 merdely Exp $

COMMENT=	tool for capturing data from TCP connections

DISTNAME=	tcpflow-0.21
PKGNAME=	${DISTNAME}p0
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.circlemud.org/pub/jelson/tcpflow/

HOMEPAGE=       http://www.circlemud.org/~jelson/software/tcpflow/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c pcap 

CONFIGURE_STYLE=        gnu

.include <bsd.port.mk>
