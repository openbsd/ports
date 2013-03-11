# $OpenBSD: Makefile,v 1.15 2013/03/11 11:35:54 espie Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl defines relating to AF_INET6 sockets

DISTNAME=	Socket6-0.23
REVISION=	2

CATEGORIES=	net devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

MODULES=	cpan

CONFIGURE_ARGS+=	CC="${CC}" CCFLAGS="${CFLAGS}" OPTIMIZE=" "

.include <bsd.port.mk>
