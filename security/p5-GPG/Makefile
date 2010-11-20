# $OpenBSD: Makefile,v 1.17 2010/11/20 17:22:44 espie Exp $

COMMENT=	perl5 interface to GnuPG using scalars

MODULES=	cpan
DISTNAME=	GPG-0.06
REVISION=	1
CATEGORIES=	security
CPAN_AUTHOR=	MILES
USE_GROFF =	Yes

RUN_DEPENDS=	security/gnupg<2
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

.include <bsd.port.mk>	
