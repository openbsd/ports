# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:30 espie Exp $

COMMENT=        "forbids warnings while testing"

MODULES=	cpan
DISTNAME=	Test-NoWarnings-0.082
CATEGORIES=     devel

MAINTAINER=	Simon Dassow <janus@errornet.de>

# perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Test-Tester

.include <bsd.port.mk>
