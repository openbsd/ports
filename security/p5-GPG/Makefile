# $OpenBSD: Makefile,v 1.24 2020/07/03 21:45:42 sthen Exp $

COMMENT=	perl5 interface to GnuPG using scalars

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GPG-0.06
REVISION=	3
CATEGORIES=	security
CPAN_AUTHOR=	MILES

RUN_DEPENDS=	security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

.include <bsd.port.mk>	
