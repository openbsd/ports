# $OpenBSD: Makefile,v 1.14 2012/08/23 15:50:06 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl defines relating to AF_INET6 sockets

DISTNAME=	Socket6-0.23
REVISION=	2

CATEGORIES=	net devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c

MODULES=	cpan

CONFIGURE_ARGS+=	CC="${CC}" CCFLAGS="${CFLAGS}" OPTIMIZE=" "

.include <bsd.port.mk>
