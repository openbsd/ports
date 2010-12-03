# $OpenBSD: Makefile,v 1.9 2010/12/03 11:46:53 ajacoutot Exp $

COMMENT=	read / write PHP session files

MODULES=	cpan
DISTNAME=	PHP-Session-0.26
REVISION=	2
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
