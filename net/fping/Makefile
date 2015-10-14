# $OpenBSD: Makefile,v 1.35 2015/10/14 21:36:30 sthen Exp $

COMMENT=		quickly ping N hosts w/o flooding the network

DISTNAME=		fping-3.12

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
CPPFLAGS= -DDEBUG=1

.include <bsd.port.mk>
