# $OpenBSD: Makefile,v 1.1.1.1 2006/04/18 18:02:25 espie Exp $

COMMENT=		"diff based on word, not lines for perl"

DISTNAME=		Text-WordDiff-0.02
PKGNAME=		p5-${DISTNAME}
PKG_ARCH=		*
CATEGORIES=		textproc perl5

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Text/}

CONFIGURE_STYLE=	perl modbuild

REGRESS_DEPENDS=	::devel/p5-Test-Pod
.include <bsd.port.mk>	
