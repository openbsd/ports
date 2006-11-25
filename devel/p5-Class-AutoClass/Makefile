#	$OpenBSD: Makefile,v 1.3 2006/11/25 16:32:34 espie Exp $

COMMENT=	"auto getters/setters for perl"

MODULES=	cpan
DISTNAME=	Class-AutoClass-0.093
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

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
