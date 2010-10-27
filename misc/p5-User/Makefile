# $OpenBSD: Makefile,v 1.3 2010/10/27 17:46:04 stephan Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.9
CATEGORIES=		misc

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
USE_GROFF =		Yes

.ifmake regress
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
