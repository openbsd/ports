# $OpenBSD: Makefile,v 1.41 2018/07/26 10:37:46 sthen Exp $

COMMENT=	quickly ping N hosts w/o flooding the network

DISTNAME=	fping-3.16
REVISION=	0

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
