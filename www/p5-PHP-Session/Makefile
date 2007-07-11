# $OpenBSD: Makefile,v 1.5 2007/07/11 09:31:20 ajacoutot Exp $

COMMENT=	read / write PHP session files

MODULES=	cpan
DISTNAME=	PHP-Session-0.26
PKGNAME=        p5-${DISTNAME}p1
CATEGORIES=     www

# GPL/Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Universal-require

.include <bsd.port.mk>
