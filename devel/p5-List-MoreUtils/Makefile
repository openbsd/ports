# $OpenBSD: Makefile,v 1.5 2008/04/15 21:05:19 jasper Exp $

COMMENT=		perl5 extra list utilities

MODULES=		cpan
DISTNAME=		List-MoreUtils-0.22
CATEGORIES=		devel
SHARED_ONLY=		Yes

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CPAN_AUTHOR=		VPARSEVAL

REGRESS_DEPENDS=	::devel/p5-Test-Pod-Coverage \
			::devel/p5-Test-Pod

.include <bsd.port.mk>	
