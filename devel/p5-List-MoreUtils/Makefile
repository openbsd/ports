# $OpenBSD: Makefile,v 1.1.1.1 2006/04/18 19:29:23 espie Exp $

COMMENT=		"perl5 extra list utilities"

DISTNAME=		List-MoreUtils-0.19
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5
SHARED_ONLY=		Yes

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=List/}

CONFIGURE_STYLE=	perl

REGRESS_DEPENDS=	::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>	
