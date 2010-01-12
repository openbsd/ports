# $OpenBSD: Makefile,v 1.1.1.1 2010/01/12 09:40:54 jasper Exp $

COMMENT=		required attributes which fail only when trying to use them

DISTNAME=		MooseX-LazyRequire-0.04

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		::devel/p5-MooseX-Types \
			::devel/p5-aliased \
			::devel/p5-namespace-autoclean

.include <bsd.port.mk>
