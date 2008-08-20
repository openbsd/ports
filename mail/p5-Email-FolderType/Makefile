# $OpenBSD: Makefile,v 1.3 2008/08/20 20:41:04 dhill Exp $

COMMENT= 	determine email folder type

MODULES=	cpan

DISTNAME=	Email-FolderType-0.813
CATEGORIES=	mail

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-Module-Pluggable
REGRESS_DEPENDS+=	::devel/p5-Test-Pod

.include <bsd.port.mk>
