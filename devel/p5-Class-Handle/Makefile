# $OpenBSD: Makefile,v 1.1.1.1 2007/10/13 06:44:54 simon Exp $

COMMENT=        module to create objects that are handles to classes

MODULES=	cpan
DISTNAME=	Class-Handle-1.06
CATEGORIES=     devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-ISA \
		::devel/p5-Class-Inspector
REGRESS_DEPENDS=::devel/p5-Test-Pod

.include <bsd.port.mk>
