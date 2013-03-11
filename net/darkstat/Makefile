# $OpenBSD: Makefile,v 1.18 2013/03/11 11:35:46 espie Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.715
CATEGORIES=		net www

HOMEPAGE=		http://unix4lyfe.org/darkstat/
MAINTAINER=		Chris Kuethe <ckuethe@openbsd.org>

# GPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap z

MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--with-privdrop-user=_darkstat

NO_TEST=		Yes

.include <bsd.port.mk>
