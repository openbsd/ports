# $OpenBSD: Makefile,v 1.4 2007/09/16 00:17:05 merdely Exp $

COMMENT= 	find and format date headers

MODULES=	cpan

DISTNAME=	Email-Date-1.101
PKGNAME=	p5-${DISTNAME}p1
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
		::mail/p5-Email-Simple

MAKE_ENV=	TEST_POD=Yes

.include <bsd.port.mk>
