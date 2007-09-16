# $OpenBSD: Makefile,v 1.5 2007/09/16 00:17:05 merdely Exp $

COMMENT= 	simply sending Email

MODULES=	cpan

DISTNAME=	Email-Send-2.185
PKGNAME=	p5-${DISTNAME}p0
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

REGRESS_DEPENDS=::devel/p5-IO-All

.include <bsd.port.mk>
