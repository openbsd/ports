# $OpenBSD: Makefile,v 1.3 2006/04/21 08:34:24 aanriot Exp $

COMMENT=	"simple methods to Read/Write .ini style files"

DISTNAME=	Config-Tiny-2.05
PKGNAME=        p5-${DISTNAME}p0
CATEGORIES=     devel perl5

# GPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Config/}

CONFIGURE_STYLE=perl
PKG_ARCH=	*

REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>
