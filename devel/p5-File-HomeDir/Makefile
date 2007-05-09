# $OpenBSD: Makefile,v 1.4 2007/05/09 17:15:20 simon Exp $

COMMENT=		"retrieve home directory location"

MODULES=		cpan
DISTNAME=		File-HomeDir-0.65
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
