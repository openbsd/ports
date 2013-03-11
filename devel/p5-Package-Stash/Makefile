# $OpenBSD: Makefile,v 1.8 2013/03/11 10:50:20 espie Exp $

COMMENT=		routines for manipulating stashes

MODULES=		cpan
DISTNAME=		Package-Stash-0.33
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes

RUN_DEPENDS =		devel/p5-Dist-CheckConflicts \
			devel/p5-Package-DeprecationManager

TEST_DEPENDS =	devel/p5-Test-Exception \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
