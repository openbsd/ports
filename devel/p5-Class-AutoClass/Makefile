#	$OpenBSD: Makefile,v 1.2 2005/12/03 11:59:58 steven Exp $

COMMENT=	"auto getters/setters for perl"

PKG_ARCH=	*
DISTNAME=	Class-AutoClass-0.093
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

# Artistic licence
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Class/}
EXTRACT_SUFX=		.tgz

CONFIGURE_STYLE= perl

RUN_DEPENDS=	::devel/p5-IO-stringy
BUILD_DEPENDS=	${RUN_DEPENDS}

WRKDIST=	${WRKDIR}/AutoClass

.include <bsd.port.mk>
