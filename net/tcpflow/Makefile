# $OpenBSD: Makefile,v 1.19 2010/10/18 18:36:58 espie Exp $

COMMENT=	tool for capturing data from TCP connections

DISTNAME=	tcpflow-0.21
REVISION=	1
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
USE_GROFF =	Yes

.include <bsd.port.mk>
