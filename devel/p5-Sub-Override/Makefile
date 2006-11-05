# $OpenBSD: Makefile,v 1.1.1.1 2006/11/05 16:19:51 espie Exp $

COMMENT=	"extension for easily overriding subroutines"

DISTNAME=	Sub-Override-0.08
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Sub/}

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=::devel/p5-Test-Exception \
		::devel/p5-Test-Pod \
		::devel/p5-Test-Pod-Coverage

CONFIGURE_STYLE=perl
PKG_ARCH=	*

.include <bsd.port.mk>
