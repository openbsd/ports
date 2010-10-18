# $OpenBSD: Makefile,v 1.2 2010/10/18 20:52:09 espie Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.8
CATEGORIES=		misc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =	Yes

.ifmake regress
PORTHOME=               ${HOME}
.endif

.include <bsd.port.mk>
