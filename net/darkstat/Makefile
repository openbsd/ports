# $OpenBSD: Makefile,v 1.7 2007/09/15 22:36:52 merdely Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.619
CATEGORIES=		net www

HOMEPAGE=		http://dmr.ath.cx/net/darkstat/
MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# BSD with some code GPL'ed
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= c pcap z

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-privdrop-user=_darkstat

NO_REGRESS=		Yes

.include <bsd.port.mk>
