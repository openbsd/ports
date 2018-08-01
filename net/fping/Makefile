# $OpenBSD: Makefile,v 1.42 2018/08/01 15:02:18 millert Exp $

COMMENT=	quickly ping N hosts w/o flooding the network

DISTNAME=	fping-3.16
REVISION=	1

CATEGORIES=	net

HOMEPAGE=	http://fping.org/

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

# uses pledge()
WANTLIB += c

MASTER_SITES=	http://fping.org/dist/

CONFIGURE_STYLE= gnu
SEPARATE_BUILD=	Yes
CONFIGURE_ARGS=	--bindir=${PREFIX}/sbin \
		--enable-ipv6

.include <bsd.port.mk>
