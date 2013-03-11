# $OpenBSD: Makefile,v 1.22 2013/03/11 11:35:57 espie Exp $

COMMENT=	tool for capturing data from TCP connections

DISTNAME=	tcpflow-0.21
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.circlemud.org/pub/jelson/tcpflow/ \
		http://www.circlemud.org/pub/jelson/tcpflow/

HOMEPAGE=       http://www.circlemud.org/~jelson/software/tcpflow/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap 

CONFIGURE_STYLE=        gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
