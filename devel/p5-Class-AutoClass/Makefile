#	$OpenBSD: Makefile,v 1.5 2007/09/16 02:53:03 merdely Exp $

COMMENT=	auto getters/setters for perl

MODULES=	cpan
DISTNAME=	Class-AutoClass-0.093
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

RUN_DEPENDS=	::devel/p5-IO-stringy
BUILD_DEPENDS=	${RUN_DEPENDS}

WRKDIST=	${WRKDIR}/AutoClass

.include <bsd.port.mk>
