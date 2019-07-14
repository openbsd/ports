# $OpenBSD: Makefile,v 1.23 2019/07/14 02:16:52 naddy Exp $

COMMENT=	perl5 interface to GnuPG using scalars

MODULES=	cpan
PKG_ARCH=	*
DISTNAME=	GPG-0.06
REVISION=	2
CATEGORIES=	security
CPAN_AUTHOR=	MILES

RUN_DEPENDS=	security/gnupg
BUILD_DEPENDS=	${RUN_DEPENDS}

PERMIT_PACKAGE=		no license
PERMIT_DISTFILES=	no license

.include <bsd.port.mk>	
