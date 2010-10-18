# $OpenBSD: Makefile,v 1.6 2010/10/18 18:36:51 espie Exp $

COMMENT=	Event based transparent Client/Server RPC framework

MODULES=	cpan
DISTNAME=	Event-RPC-1.01
CATEGORIES=	net devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Event \
		::security/p5-IO-Socket-SSL

.include <bsd.port.mk>
