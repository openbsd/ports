# $OpenBSD: Makefile,v 1.1.1.1 2005/05/31 19:25:26 sturm Exp $

COMMENT=	"read / write PHP session files"

DISTNAME=	PHP-Session-0.22
PKGNAME=        p5-${DISTNAME}
CATEGORIES=     www perl5

MAINTAINER=     Alexandre Anriot <aanriot@atlantilde.com>

# GPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=PHP/}

CONFIGURE_STYLE=perl

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Universal-exports

PKG_ARCH=	*

.include <bsd.port.mk>
