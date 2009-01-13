# $OpenBSD: Makefile,v 1.8 2009/01/13 14:41:13 simon Exp $

COMMENT= 	simply sending email

MODULES=	cpan

DISTNAME=	Email-Send-2.194
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Return-Value \
		::mail/p5-Email-Address \
		::mail/p5-Email-Simple

REGRESS_DEPENDS=::mail/p5-Email-Abstract \
		::mail/p5-Mail-Tools

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
