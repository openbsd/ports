# $OpenBSD: Makefile,v 1.7 2012/04/07 13:50:06 sthen Exp $

COMMENT=		routines for manipulating stashes

MODULES=		cpan
DISTNAME=		Package-Stash-0.33
REVISION=		0
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS =		devel/p5-Dist-CheckConflicts \
			devel/p5-Package-DeprecationManager

REGRESS_DEPENDS =	devel/p5-Test-Exception \
			devel/p5-Test-Fatal \
			devel/p5-Test-Requires

.include <bsd.port.mk>
