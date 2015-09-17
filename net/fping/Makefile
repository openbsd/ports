# $OpenBSD: Makefile,v 1.33 2015/09/17 12:03:42 sthen Exp $

COMMENT=		quickly ping N hosts w/o flooding the network

DISTNAME=		fping-3.10

CATEGORIES=		net

HOMEPAGE=		http://fping.org/

MAINTAINER=		Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c

MASTER_SITES=		http://fping.org/dist/

CONFIGURE_STYLE=	gnu
SEPARATE_BUILD=		Yes
CONFIGURE_ARGS=		--bindir=${PREFIX}/sbin \
			--enable-ipv6

.include <bsd.port.mk>
