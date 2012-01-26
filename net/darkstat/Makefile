# $OpenBSD: Makefile,v 1.16 2012/01/26 08:03:57 ajacoutot Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.713
CATEGORIES=		net www
REVISION=		0

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

USE_GROFF =		Yes
NO_REGRESS=		Yes

.include <bsd.port.mk>
