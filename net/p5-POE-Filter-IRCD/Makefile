# $OpenBSD: Makefile,v 1.8 2007/03/17 22:43:41 jasper Exp $

COMMENT=		"POE-based parser for the IRC protocol"

MODULES=		cpan
DISTNAME=		POE-Filter-IRCD-2.30
CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
