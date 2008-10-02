# $OpenBSD: Makefile,v 1.6 2008/10/02 20:35:09 simon Exp $

COMMENT=		perl5 extra list utilities

MODULES=		cpan
DISTNAME=		List-MoreUtils-0.22
PKGNAME=		p5-${DISTNAME}p0
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
