# $OpenBSD: Makefile,v 1.3 2007/01/10 21:47:21 jasper Exp $

COMMENT=		"retrieve home directory location"

MODULES=		cpan
DISTNAME=		File-HomeDir-0.63
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
