# $OpenBSD: Makefile,v 1.8 2010/11/22 08:36:51 espie Exp $

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
RUN_DEPENDS=	devel/p5-Universal-require

.include <bsd.port.mk>
