# $OpenBSD: Makefile,v 1.24 2014/02/07 08:56:53 brad Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.718
CATEGORIES=		net www
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://unix4lyfe.org/darkstat/

# GPLv2 and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c pcap z

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--with-privdrop-user=_darkstat

NO_TEST=		Yes

.include <bsd.port.mk>
