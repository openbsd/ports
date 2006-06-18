# $OpenBSD: Makefile,v 1.1.1.1 2006/06/18 17:26:20 jasper Exp $

COMMENT=		"network statistics gatherer with graphs"

DISTNAME=		darkstat-3.0.471
CATEGORIES=		net www

HOMEPAGE=		http://dmr.ath.cx/net/darkstat/

# BSD with some code GPL'ed
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= c pcap z

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu

ALL_TARGET=		# Empty

NO_REGRESS=		Yes

.include <bsd.port.mk>
