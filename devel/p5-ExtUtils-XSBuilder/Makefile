# $OpenBSD: Makefile,v 1.2 2010/10/18 17:48:00 espie Exp $

COMMENT=        automatic Perl XS glue code generation

MODULES=	cpan
DISTNAME=	ExtUtils-XSBuilder-0.28
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Parse-RecDescent \
		::devel/p5-Tie-IxHash

.include <bsd.port.mk>
