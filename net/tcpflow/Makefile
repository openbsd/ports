# $OpenBSD: Makefile,v 1.15 2006/01/15 12:42:31 sturm Exp $

COMMENT=	"tool for capturing data from TCP connections"

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
