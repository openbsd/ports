# $OpenBSD: Makefile,v 1.5 2007/09/15 22:36:57 merdely Exp $

SHARED_ONLY=	Yes

COMMENT=	Perl defines relating to AF_INET6 sockets

MODULES=	cpan
DISTNAME=	Socket6-0.19
CATEGORIES=	net devel

HOMEPAGE=	http://search.cpan.org/~umemoto/${DISTNAME}/

# 3-term BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_ARGS+=CC="${CC}" CCFLAGS="${CFLAGS}" OPTIMIZE=" "

.include <bsd.port.mk>
