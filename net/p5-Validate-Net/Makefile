# $OpenBSD: Makefile,v 1.5 2010/12/03 11:45:43 ajacoutot Exp $

COMMENT=        module to format validation for Net:: related strings

MODULES=	cpan
DISTNAME=	Validate-Net-0.6
REVISION=	0
CATEGORIES=     net devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

CPAN_AUTHOR=	ADAMK

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Class-Default

.include <bsd.port.mk>
