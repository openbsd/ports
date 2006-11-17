# $OpenBSD: Makefile,v 1.4 2006/11/17 16:02:48 espie Exp $

COMMENT=	"read / write PHP session files"

MODULES=	cpan
DISTNAME=	PHP-Session-0.26
PKGNAME=        p5-${DISTNAME}p0
CATEGORIES=     www

# GPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Universal-exports

.include <bsd.port.mk>
