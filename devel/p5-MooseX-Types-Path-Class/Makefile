# $OpenBSD: Makefile,v 1.2 2010/07/02 04:24:11 jim Exp $

COMMENT=		Path::Class type library for Moose

DISTNAME=		MooseX-Types-Path-Class-0.05

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-Moose \
			::devel/p5-MooseX-Types \
			::devel/p5-Path-Class \
			::devel/p5-Class-MOP
BUILD_DEPENDS=		${RUN_DEPENDS}
REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
