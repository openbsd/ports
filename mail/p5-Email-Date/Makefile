# $OpenBSD: Makefile,v 1.10 2010/12/03 11:45:38 ajacoutot Exp $

COMMENT= 	find and format date headers

MODULES=	cpan
USE_GROFF =	Yes

DISTNAME=	Email-Date-1.103
REVISION=	1
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	devel/p5-Time-TimeDate \
		mail/p5-Email-Abstract \
		mail/p5-Email-Date-Format

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
