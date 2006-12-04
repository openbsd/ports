# $OpenBSD: Makefile,v 1.1.1.1 2006/12/04 14:35:12 msf Exp $

COMMENT=	"convenience wrappers around Carp::Assert"

MODULES=	cpan

DISTNAME=	Carp-Assert-More-1.12
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Carp-Assert
BUILD_DEPENDS=	${RUN_DEPENDS}

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
