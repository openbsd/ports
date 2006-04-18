# $OpenBSD: Makefile,v 1.1.1.1 2006/04/18 10:18:07 espie Exp $

COMMENT=		"ask passwords from perl"

DISTNAME=		Term-ReadPassword-0.07
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		devel perl5

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Term/}

CONFIGURE_STYLE=	perl
REGRESS_IS_INTERACTIVE=	Yes

.include <bsd.port.mk>	
