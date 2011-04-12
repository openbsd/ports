# $OpenBSD: Makefile,v 1.5 2011/04/12 06:41:27 jasper Exp $

COMMENT=		required attributes which fail only when trying to use them

DISTNAME=		MooseX-LazyRequire-0.07

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-aliased \
			devel/p5-namespace-autoclean
BUILD_DEPENDS=		${RUN_DEPENDS}

.include <bsd.port.mk>
