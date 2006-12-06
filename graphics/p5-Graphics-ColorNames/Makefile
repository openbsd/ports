# $OpenBSD: Makefile,v 1.9 2006/12/06 17:21:34 jasper Exp $

COMMENT=	"defines RGB values for common color names"

DISTNAME=	Graphics-ColorNames-2.0_03
PKGNAME=	p5-Graphics-ColorNames-2.0.03
CATEGORIES=	graphics

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# GPL/Artistic
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

BUILD_DEPENDS=	::devel/p5-Module-Load
RUN_DEPENDS=	${BUILD_DEPENDS}

MODULES=	cpan
CPAN_AUTHOR=	RRWO

.include <bsd.port.mk>
