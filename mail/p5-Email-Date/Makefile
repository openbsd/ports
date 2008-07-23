# $OpenBSD: Makefile,v 1.5 2008/07/23 08:15:00 simon Exp $

COMMENT= 	find and format date headers

MODULES=	cpan

DISTNAME=	Email-Date-1.103
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Time-Piece \
		::devel/p5-Time-TimeDate \
		::mail/p5-Email-Abstract \
		::mail/p5-Email-Date-Format

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
