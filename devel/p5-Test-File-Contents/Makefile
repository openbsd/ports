# $OpenBSD: Makefile,v 1.2 2006/04/18 15:50:33 espie Exp $

COMMENT=		"perl test framework for file contents"

DISTNAME=		Test-File-Contents-0.03
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		devel perl5
PKG_ARCH=		*

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Test/}

CONFIGURE_STYLE=	perl modbuild

REGRESS_DEPENDS=	::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>	
