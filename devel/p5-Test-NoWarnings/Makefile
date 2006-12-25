# $OpenBSD: Makefile,v 1.3 2006/12/25 15:17:52 simon Exp $

COMMENT=        "forbids warnings while testing"

MODULES=	cpan
DISTNAME=	Test-NoWarnings-0.083
CATEGORIES=     devel

MAINTAINER=	Simon Dassow <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Test-Tester

.include <bsd.port.mk>
