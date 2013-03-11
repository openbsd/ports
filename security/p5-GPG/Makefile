# $OpenBSD: Makefile,v 1.20 2013/03/11 11:41:27 espie Exp $

COMMENT=	perl5 interface to GnuPG using scalars

MODULES=	cpan
DISTNAME=	GPG-0.06
REVISION=	2
CATEGORIES=	security
CPAN_AUTHOR=	MILES
USE_GROFF =	Yes

RUN_DEPENDS=	security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

.include <bsd.port.mk>	
