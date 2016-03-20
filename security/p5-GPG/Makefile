# $OpenBSD: Makefile,v 1.22 2016/03/20 19:57:01 naddy Exp $

COMMENT=	perl5 interface to GnuPG using scalars

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GPG-0.06
REVISION=	2
CATEGORIES=	security
CPAN_AUTHOR=	MILES

RUN_DEPENDS=	security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

.include <bsd.port.mk>	
