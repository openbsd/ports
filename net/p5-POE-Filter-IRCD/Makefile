# $OpenBSD: Makefile,v 1.12 2010/05/26 08:55:33 kevlo Exp $

COMMENT=		POE-based parser for the IRC protocol

MODULES=		cpan
DISTNAME=		POE-Filter-IRCD-2.42
CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
