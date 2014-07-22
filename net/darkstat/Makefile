# $OpenBSD: Makefile,v 1.25 2014/07/22 10:55:40 ajacoutot Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.718
CATEGORIES=		net www
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2
REVISION=		0

HOMEPAGE=		http://unix4lyfe.org/darkstat/

# GPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap z

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--with-privdrop-user=_darkstat

NO_TEST=		Yes

.include <bsd.port.mk>
