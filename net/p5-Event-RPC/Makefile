# $OpenBSD: Makefile,v 1.5 2008/11/10 11:14:45 jasper Exp $

COMMENT=	Event based transparent Client/Server RPC framework

MODULES=	cpan
DISTNAME=	Event-RPC-1.01
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
