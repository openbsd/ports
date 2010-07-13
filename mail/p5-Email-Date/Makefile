# $OpenBSD: Makefile,v 1.7 2010/07/13 20:14:21 sthen Exp $

COMMENT= 	find and format date headers

MODULES=	cpan

DISTNAME=	Email-Date-1.103
REVISION=	0
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Time-TimeDate \
		::mail/p5-Email-Abstract \
		::mail/p5-Email-Date-Format

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
