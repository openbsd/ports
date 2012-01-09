# $OpenBSD: Makefile,v 1.12 2012/01/09 16:46:08 bluhm Exp $

COMMENT=		perl5 extra list utilities

MODULES=		cpan
DISTNAME=		List-MoreUtils-0.33
CATEGORIES=		devel
SHARED_ONLY=		Yes

MAINTAINER =		Alexander Bluhm <bluhm@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

REGRESS_DEPENDS=	devel/p5-Test-Pod-Coverage \
			devel/p5-Test-Pod

.include <bsd.port.mk>
