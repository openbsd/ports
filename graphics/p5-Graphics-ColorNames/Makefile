# $OpenBSD: Makefile,v 1.19 2010/12/03 11:45:37 ajacoutot Exp $

COMMENT=	defines RGB values for common color names

DISTNAME=	Graphics-ColorNames-2.11
REVISION=	2
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# GPL/Artistic
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

RUN_DEPENDS=	devel/p5-Test-Exception
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	cpan
USE_GROFF =	Yes
CPAN_AUTHOR=	RRWO

.include <bsd.port.mk>
