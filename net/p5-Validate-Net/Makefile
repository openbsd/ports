# $OpenBSD: Makefile,v 1.3 2010/10/18 18:36:56 espie Exp $

COMMENT=        module to format validation for Net:: related strings

MODULES=	cpan
DISTNAME=	Validate-Net-0.6
CATEGORIES=     net devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

CPAN_AUTHOR=	ADAMK

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Default

.include <bsd.port.mk>
