# $OpenBSD: Makefile,v 1.1.1.1 2000/06/14 05:57:49 jakob Exp $

DISTNAME=		rrdtool-1.0.23
CATEGORIES=     	net
NEED_VERSION=		1.302
HOMEPAGE=		http://ee-staff.ethz.ch/~oetiker/webtools/rrdtool/

MAINTAINER=		danh@nfol.com

PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		${HOMEPAGE}/pub/ \
			ftp://ftp.sunet.se/pub/network/monitoring/rrdtool/ \
			http://ftp.sunet.se/pub/network/monitoring/rrdtool/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}

.include <bsd.port.mk>
