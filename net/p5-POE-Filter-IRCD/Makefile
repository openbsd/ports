# $OpenBSD: Makefile,v 1.16 2013/03/11 11:35:54 espie Exp $

COMMENT=		POE-based parser for the IRC protocol

MODULES=		cpan
DISTNAME=		POE-Filter-IRCD-2.42
REVISION=		0
CATEGORIES=		net
USE_GROFF =		Yes

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS=		devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

MAKE_ENV=		TEST_POD=Yes

.include <bsd.port.mk>
