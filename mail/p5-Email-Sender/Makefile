# $OpenBSD: Makefile,v 1.2 2009/10/14 10:48:07 sthen Exp $

COMMENT= 	library for sending email

MODULES=	cpan

DISTNAME=	Email-Sender-0.092840
CATEGORIES=	mail

MAINTAINER=	Stephan A. Rickauer <stephan.rickauer@startek.ch>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Moose \
		::devel/p5-List-MoreUtils \
		::net/p5-Sys-Hostname-Long \
		::sysutils/p5-Capture-Tiny \
		::mail/p5-Email-Address \
		:p5-Email-Abstract->=3:mail/p5-Email-Abstract \
		:p5-Email-Simple->=1.998:mail/p5-Email-Simple

REGRESS_DEPENDS=::devel/p5-Test-MockObject \
		::devel/p5-Sub-Override \
		::devel/p5-Test-JSON

MAKE_ENV+=	RELEASE_TESTING=1

.include <bsd.port.mk>
