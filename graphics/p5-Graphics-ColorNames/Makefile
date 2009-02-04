# $OpenBSD: Makefile,v 1.15 2009/02/04 08:48:20 jasper Exp $

COMMENT=	defines RGB values for common color names

DISTNAME=	Graphics-ColorNames-2.11
PKGNAME=	p5-${DISTNAME}p1
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

RUN_DEPENDS=	::devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
CPAN_AUTHOR=	RRWO

.include <bsd.port.mk>
