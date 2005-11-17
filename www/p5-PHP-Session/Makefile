# $OpenBSD: Makefile,v 1.3 2005/11/17 14:03:58 aanriot Exp $

COMMENT=	"read / write PHP session files"

DISTNAME=	PHP-Session-0.26
PKGNAME=        p5-${DISTNAME}
CATEGORIES=     www perl5

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
