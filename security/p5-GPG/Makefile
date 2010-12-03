# $OpenBSD: Makefile,v 1.19 2010/12/03 11:46:47 ajacoutot Exp $

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
PERMIT_DISTFILES_CDROM=	no license
PERMIT_DISTFILES_FTP=	no license

.include <bsd.port.mk>	
