# $OpenBSD: Makefile,v 1.21 2011/03/10 20:23:21 jasper Exp $

COMMENT=	tool for capturing data from TCP connections

DISTNAME=	tcpflow-0.21
REVISION=	2
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.circlemud.org/pub/jelson/tcpflow/ \
		http://www.circlemud.org/pub/jelson/tcpflow/

HOMEPAGE=       http://www.circlemud.org/~jelson/software/tcpflow/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c pcap 

CONFIGURE_STYLE=        gnu
USE_GROFF =		Yes

.include <bsd.port.mk>
