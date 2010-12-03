# $OpenBSD: Makefile,v 1.8 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT=	Event based transparent Client/Server RPC framework

MODULES=	cpan
DISTNAME=	Event-RPC-1.01
REVISION=	0
CATEGORIES=	net devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/p5-Event \
		security/p5-IO-Socket-SSL

.include <bsd.port.mk>
