# $OpenBSD: Makefile,v 1.23 2014/01/25 05:27:13 brad Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.717
REVISION=		2
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
