# $OpenBSD: Makefile,v 1.2 2010/10/18 17:47:57 espie Exp $

COMMENT=		run code after a subroutine call

DISTNAME=		Context-Preserve-0.01

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
CPAN_AUTHOR=		JROCKWAY
USE_GROFF =	Yes

REGRESS_DEPENDS=	::devel/p5-Test-Exception \
			::devel/p5-Test-use-ok

.include <bsd.port.mk>
