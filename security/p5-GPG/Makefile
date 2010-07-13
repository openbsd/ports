# $OpenBSD: Makefile,v 1.14 2010/07/13 20:14:22 sthen Exp $

COMMENT=	perl5 interface to GnuPG using scalars

MODULES=	cpan
DISTNAME=	GPG-0.06
REVISION=	0
CATEGORIES=	security
CPAN_AUTHOR=	MILES

RUN_DEPENDS=	:gnupg-*:security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

.include <bsd.port.mk>	
