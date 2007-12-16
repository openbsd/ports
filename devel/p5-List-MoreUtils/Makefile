# $OpenBSD: Makefile,v 1.4 2007/12/16 23:47:42 simon Exp $

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

REGRESS_DEPENDS=	::devel/p5-Test-Pod-Coverage \
			::devel/p5-Test-Pod

.include <bsd.port.mk>	
