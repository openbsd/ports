# $OpenBSD: Makefile,v 1.2 2006/04/09 12:02:36 aanriot Exp $

COMMENT=	"simple methods to Read/Write .ini style files"

DISTNAME=	Config-Tiny-2.05
PKGNAME=        p5-${DISTNAME}
CATEGORIES=     devel perl5

MAINTAINER=     Alexandre Anriot <aanriot@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	http://search.cpan.org/CPAN/authors/id/A/AD/ADAMK/

CONFIGURE_STYLE=perl
PKG_ARCH=	*

REGRESS_DEPENDS=	::devel/p5-Test-Pod

.include <bsd.port.mk>
