# $OpenBSD: Makefile,v 1.19 2013/10/10 02:08:24 brad Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.715
REVISION=		0
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
