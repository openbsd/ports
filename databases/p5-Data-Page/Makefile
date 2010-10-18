# $OpenBSD: Makefile,v 1.5 2010/10/18 17:06:08 espie Exp $

COMMENT=	pager utility

DISTNAME=	Data-Page-2.00
CATEGORIES=	databases
MODULES=	cpan
USE_GROFF =	Yes

MAINTAINER=		Sean Comeau <scomeau@obscurity.org>

# Same as Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor-Chained \
		::devel/p5-Test-Exception

.include <bsd.port.mk>
