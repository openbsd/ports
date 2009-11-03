# $OpenBSD: Makefile,v 1.2 2009/11/03 13:27:43 stephan Exp $

COMMENT= 	roles with composition parameters

DISTNAME=	MooseX-Role-Parameterized-0.13
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	devel
MODULES=	cpan

MAINTAINER=	Stephan A. Rickauer <stephan@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Moose
REGRESS_DEPENDS=::devel/p5-Test-Exception

.include <bsd.port.mk>
