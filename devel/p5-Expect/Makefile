# $OpenBSD: Makefile,v 1.6 2010/10/18 17:48:00 espie Exp $

COMMENT=		talk to other applications

MODULES=		cpan
DISTNAME=		Expect-1.21
CATEGORIES=		devel
USE_GROFF =	Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-IO-Tty->=1.07:devel/p5-IO-Tty

.include <bsd.port.mk>
