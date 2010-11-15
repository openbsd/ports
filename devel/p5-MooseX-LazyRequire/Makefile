# $OpenBSD: Makefile,v 1.3 2010/11/15 19:46:04 espie Exp $

COMMENT=		required attributes which fail only when trying to use them

DISTNAME=		MooseX-LazyRequire-0.04

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-MooseX-Types \
			devel/p5-aliased \
			devel/p5-namespace-autoclean

.include <bsd.port.mk>
