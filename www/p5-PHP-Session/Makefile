# $OpenBSD: Makefile,v 1.7 2010/11/11 12:35:14 sthen Exp $

COMMENT=	read / write PHP session files

MODULES=	cpan
DISTNAME=	PHP-Session-0.26
REVISION=	1
CATEGORIES=	www
USE_GROFF =	Yes

# GPL/Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Universal-require

.include <bsd.port.mk>
