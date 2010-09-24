# $OpenBSD: Makefile,v 1.12 2010/09/24 15:32:34 sthen Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl defines relating to AF_INET6 sockets

DISTNAME=	Socket6-0.23
REVISION=	0

CATEGORIES=	net devel

MAINTAINER=	Alexander Bluhm <bluhm@openbsd.org>

# 3-clause BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	cpan

CONFIGURE_ARGS+=	CC="${CC}" CCFLAGS="${CFLAGS}" OPTIMIZE=" "

.include <bsd.port.mk>
