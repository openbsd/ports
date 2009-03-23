# $OpenBSD: Makefile,v 1.8 2009/03/23 14:01:44 jasper Exp $

COMMENT=		retrieve home directory location

MODULES=		cpan
DISTNAME=		File-HomeDir-0.84
CATEGORIES=		devel

CPAN_AUTHOR=		ADAMK

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.ifmake regress
PORTHOME=		${HOME}
.endif

.include <bsd.port.mk>
