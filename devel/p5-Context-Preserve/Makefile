# $OpenBSD: Makefile,v 1.1.1.1 2010/01/12 09:40:25 jasper Exp $

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

REGRESS_DEPENDS=	::devel/p5-Test-Exception \
			::devel/p5-Test-use-ok

.include <bsd.port.mk>
