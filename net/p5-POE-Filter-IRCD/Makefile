# $OpenBSD: Makefile,v 1.7 2007/01/14 20:49:06 simon Exp $

COMMENT=		"POE-based parser for the IRC protocol"

MODULES=		cpan
DISTNAME=		POE-Filter-IRCD-2.2
PKGNAME=		p5-${DISTNAME}p0
CATEGORIES=		net

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic/GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-POE
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
