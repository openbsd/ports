# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:08 espie Exp $

COMMENT=		temporary files support for testing

DISTNAME=		Test-TempDir-0.05

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =	Yes

RUN_DEPENDS=		::devel/p5-MooseX-Types-Path-Class \
			::sysutils/p5-File-NFSLock

.include <bsd.port.mk>
