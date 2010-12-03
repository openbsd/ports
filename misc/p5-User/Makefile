# $OpenBSD: Makefile,v 1.4 2010/12/03 11:45:41 ajacoutot Exp $

COMMENT=		API for locating user information

DISTNAME=		User-1.9
REVISION=		0
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
