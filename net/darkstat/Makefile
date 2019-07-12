# $OpenBSD: Makefile,v 1.29 2019/07/12 20:48:24 sthen Exp $

COMMENT=		network statistics gatherer with graphs

DISTNAME=		darkstat-3.0.719
CATEGORIES=		net www
MASTER_SITES=		${HOMEPAGE}
EXTRACT_SUFX=		.tar.bz2
REVISION=		1

HOMEPAGE=		http://unix4lyfe.org/darkstat/

# GPLv2 and BSD
PERMIT_PACKAGE=	Yes

WANTLIB=		c pcap z

CONFIGURE_STYLE=	autoconf
AUTOCONF_VERSION=	2.69
CONFIGURE_ARGS=		--with-privdrop-user=_darkstat

NO_TEST=		Yes

.include <bsd.port.mk>
