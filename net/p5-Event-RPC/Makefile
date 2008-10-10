# $OpenBSD: Makefile,v 1.4 2008/10/10 12:12:58 jasper Exp $

COMMENT=	Event based transparent Client/Server RPC framework

MODULES=	cpan
DISTNAME=	Event-RPC-1.00
CATEGORIES=	net devel

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Event \
		::security/p5-IO-Socket-SSL

.include <bsd.port.mk>
