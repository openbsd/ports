# $OpenBSD: Makefile,v 1.22 2013/10/15 06:51:59 ajacoutot Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.717
REVISION=		1
CATEGORIES=		net www

HOMEPAGE=		http://unix4lyfe.org/darkstat/

# GPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap z

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-privdrop-user=_darkstat

NO_TEST=		Yes

.include <bsd.port.mk>
