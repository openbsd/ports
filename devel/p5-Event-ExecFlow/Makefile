# $OpenBSD: Makefile,v 1.5 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=	high level API for event-based execution flow control

MODULES=	cpan
DISTNAME=	Event-ExecFlow-0.63
REVISION=	0
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-AnyEvent \
		devel/p5-libintl

.include <bsd.port.mk>
