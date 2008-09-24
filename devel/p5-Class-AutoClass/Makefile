#	$OpenBSD: Makefile,v 1.6 2008/09/24 11:29:13 jasper Exp $

COMMENT=	auto getters/setters for perl

DISTNAME=	autoclass_v1_01
PKGNAME=	p5-Class-AutoClass-1.01
CATEGORIES=	devel

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=		cpan
CPAN_AUTHOR=		CCAVNOR

EXTRACT_SUFX=		.tgz

RUN_DEPENDS=		::devel/p5-IO-stringy
REGRESS_DEPENDS=	::devel/p5-Test-Deep

WRKDIST=		${WRKDIR}/AutoClass

.include <bsd.port.mk>
