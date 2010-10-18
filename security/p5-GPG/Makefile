# $OpenBSD: Makefile,v 1.16 2010/10/18 21:41:46 espie Exp $

COMMENT=	perl5 interface to GnuPG using scalars

MODULES=	cpan
DISTNAME=	GPG-0.06
REVISION=	1
CATEGORIES=	security
CPAN_AUTHOR=	MILES
USE_GROFF =	Yes

RUN_DEPENDS=	:gnupg-<2:security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

.include <bsd.port.mk>	
