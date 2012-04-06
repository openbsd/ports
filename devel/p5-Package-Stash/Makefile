# $OpenBSD: Makefile,v 1.6 2012/04/06 10:07:20 sthen Exp $

COMMENT=		routines for manipulating stashes

MODULES=		cpan
DISTNAME=		Package-Stash-0.33
CATEGORIES=		devel

MAINTAINER=		Jim Razmus II <jim@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Test-Exception \
			devel/p5-Test-Requires

.include <bsd.port.mk>
