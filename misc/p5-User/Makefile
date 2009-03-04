# $OpenBSD: Makefile,v 1.1.1.1 2009/03/04 20:27:36 jasper Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.8
CATEGORIES=		misc

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan

.ifmake regress
PORTHOME=               ${HOME}
.endif

.include <bsd.port.mk>
