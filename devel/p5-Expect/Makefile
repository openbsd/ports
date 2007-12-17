# $OpenBSD: Makefile,v 1.5 2007/12/17 20:58:25 simon Exp $

COMMENT=		talk to other applications

MODULES=		cpan
DISTNAME=		Expect-1.21
CATEGORIES=		devel

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		:p5-IO-Tty->=1.07:devel/p5-IO-Tty

.include <bsd.port.mk>
