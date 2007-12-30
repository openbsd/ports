# $OpenBSD: Makefile,v 1.6 2007/12/30 11:23:58 simon Exp $

COMMENT= 	simply sending email

MODULES=	cpan

DISTNAME=	Email-Send-2.192
CATEGORIES=	mail

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Module-Pluggable \
		::devel/p5-Return-Value \
		::mail/p5-Email-Address \
		::mail/p5-Email-Simple

REGRESS_DEPENDS=::mail/p5-Email-Abstract \
		::mail/p5-Mail-Tools

MAKE_ENV+=	TEST_POD=1

.include <bsd.port.mk>
