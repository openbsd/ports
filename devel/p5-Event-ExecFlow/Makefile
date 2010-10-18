# $OpenBSD: Makefile,v 1.3 2010/10/18 17:48:00 espie Exp $

COMMENT=	high level API for event-based execution flow control

MODULES=	cpan
DISTNAME=	Event-ExecFlow-0.63
CATEGORIES=	devel
USE_GROFF =	Yes

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-AnyEvent \
		::devel/p5-libintl

.include <bsd.port.mk>
